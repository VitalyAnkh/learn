#ifndef PPC_MOOC_STOPWATCH_LINUX_H
#define PPC_MOOC_STOPWATCH_LINUX_H

#include <chrono>
#include <cstring>
#include <map>
#include <memory>

#include "unistd.h"
#include <asm/unistd.h>
#include <linux/perf_event.h>
#include <sys/ioctl.h>
#include <sys/resource.h>

#include "perf/event_fd.h"
#include "perf/event_mapping.h"
#include "perf/stopwatch.h"

namespace ppc::detail {

inline long int perf_event_open(struct perf_event_attr *hw_event, pid_t pid,
                                int cpu, int group_fd, unsigned long flags) {
    return syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
}

class PerfCountersLinux : public ppc::Stopwatch {
  public:
    PerfCountersLinux() : m_ElapsedUsrTime(nanoseconds::zero()),
                          m_BeginUsrTime(nanoseconds::zero()),
                          m_ElapsedSysTime(nanoseconds::zero()),
                          m_BeginSysTime(nanoseconds::zero()) {
        m_Leader = m_Counters.end();
    }

    /// Adds a performance counter. The first counter to be added will be made a group leader, to which all other
    /// performance counters will be subordinate.
    void add_counter_imp(const std::string &name) override {
        struct perf_event_attr pe;
        std::memset(&pe, 0, sizeof(pe));

        int group_fd = -1;
        if (m_Counters.empty()) {
            pe.pinned = 1;
            pe.disabled = 1;
            pe.read_format = PERF_FORMAT_TOTAL_TIME_ENABLED | PERF_FORMAT_TOTAL_TIME_RUNNING;
        } else {
            pe.disabled = 0;
            pe.pinned = 0;
            pe.read_format = 0;
            group_fd = m_Leader->second.get();
        }

        // attributes for all events
        pe.size = sizeof(pe);
        pe.exclude_kernel = m_ExcludeKernel;
        pe.exclude_hv = 1;
        pe.inherit = 1;

        fill_in(pe, name);
        int fd = static_cast<int>(perf_event_open(&pe, 0, -1, group_fd, 0));
        if (fd == -1) {
            // if we're trying to include kernel counts, and get an access error,
            // disable kernel profiling and try again.
            if (!m_ExcludeKernel && errno == EACCES) {
                m_ExcludeKernel = true;
                add_counter_imp(name);
                return;
            }
            throw std::system_error(errno, std::generic_category());
        } else {
            // std::map guarantees iterator stability under insertion
            m_Counters[name] = EventFileDescriptor{fd, group_fd == -1};
            if (get_leader() == -1) {
                m_Leader = m_Counters.begin();
            }
        }
    }

    void start_imp() override {
        if (get_leader() != -1) {
            ioctl(get_leader(), PERF_EVENT_IOC_ENABLE, 0);
        }
        auto now = get_cputime();
        m_BeginUsrTime = now.usr;
        m_BeginSysTime = now.sys;
    }

    void stop_imp() override {
        if (get_leader() != -1) {
            ioctl(get_leader(), PERF_EVENT_IOC_DISABLE, 0);
        }
        auto end_cputime = get_cputime();
        m_ElapsedUsrTime += end_cputime.usr - m_BeginUsrTime;
        m_ElapsedSysTime += end_cputime.sys - m_BeginSysTime;
    }

    counter_result_t get_counters_imp() override {
        counter_result_t results;
        results[perf_counters::WALL_CLOCK] = wall_time().count();
        results[perf_counters::USR_CLOCK] = m_ElapsedUsrTime.count();
        results[perf_counters::SYS_CLOCK] = m_ElapsedSysTime.count();
        results["exclude_kernel"] = m_ExcludeKernel;

        if (get_leader() != -1) {
            // First, check if we can get the leader
            auto value = m_Leader->second.read_value();
            if (std::holds_alternative<EventFileDescriptor::NotCollected>(value)) {
                // this metric has not been collected. For now, we just ignore those
            } else {
                // the leader
                auto data = std::get<read_format>(value);
                results[perf_counters::TIME_ENABLED] = data.time_enabled;
                results[perf_counters::TIME_RUNNING] = data.time_running;
                results[m_Leader->first] = data.value;

                for (auto &&entry : m_Counters) {
                    // skip the leader now
                    if (entry.first == m_Leader->first)
                        continue;

                    // all others should have simple values
                    auto value = entry.second.read_value();
                    results[entry.first] = std::get<long long>(value);
                }
            }
        }
        return results;
    }

  private:
    using counter_map_t = std::map<std::string, EventFileDescriptor>;
    counter_map_t m_Counters;
    counter_map_t::iterator m_Leader;

    nanoseconds m_ElapsedUsrTime;
    nanoseconds m_BeginUsrTime;
    nanoseconds m_ElapsedSysTime;
    nanoseconds m_BeginSysTime;

    int get_leader() {
        if (m_Leader == m_Counters.end())
            return -1;
        return m_Leader->second.get();
    }

    bool m_ExcludeKernel = false;
};

} // namespace ppc::detail

inline std::unique_ptr<ppc::Stopwatch> ppc::make_stopwatch() {
    return std::make_unique<detail::PerfCountersLinux>();
}

#endif // PPC_MOOC_STOPWATCH_LINUX_H
