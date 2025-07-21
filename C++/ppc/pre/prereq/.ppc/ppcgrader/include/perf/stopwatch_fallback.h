#ifndef PPC_MOOC_STOPWATCH_FALLBACK_H
#define PPC_MOOC_STOPWATCH_FALLBACK_H

#include "perf/stopwatch.h"
#include <stdexcept>

namespace ppc::detail {

class PerfCountersFallback : public ppc::Stopwatch {
  public:
    PerfCountersFallback() : m_ElapsedUsrTime(nanoseconds::zero()),
                             m_BeginUsrTime(nanoseconds::zero()),
                             m_ElapsedSysTime(nanoseconds::zero()),
                             m_BeginSysTime(nanoseconds::zero()) {
    }

    /// Adds a performance counter.
    void add_counter_imp(const std::string &name) override {
        // TODO ruseage has fields for page faults, context switches, and system time

        if (name == perf_counters::WALL_CLOCK || name == perf_counters::USR_CLOCK || name == perf_counters::SYS_CLOCK) {
            return; // Always enabled
        }
        throw std::runtime_error("Performance counter '" + name + "' is currently not supported on this OS.");
    }

    void start_imp() override {
        auto now = get_cputime();
        m_BeginUsrTime = now.usr;
        m_BeginSysTime = now.sys;
    }

    void stop_imp() override {
        auto end_cputime = get_cputime();
        m_ElapsedUsrTime += end_cputime.usr - m_BeginUsrTime;
        m_ElapsedSysTime += end_cputime.sys - m_BeginSysTime;
    }

    counter_result_t get_counters_imp() override {
        counter_result_t results;
        results[perf_counters::WALL_CLOCK] = wall_time().count();
        results[perf_counters::USR_CLOCK] = m_ElapsedUsrTime.count();
        results[perf_counters::SYS_CLOCK] = m_ElapsedSysTime.count();

        return results;
    }

  private:
    nanoseconds m_ElapsedUsrTime;
    nanoseconds m_BeginUsrTime;
    nanoseconds m_ElapsedSysTime;
    nanoseconds m_BeginSysTime;
};

} // namespace ppc::detail

inline std::unique_ptr<ppc::Stopwatch> ppc::make_stopwatch() {
    return std::make_unique<detail::PerfCountersFallback>();
}

#endif // PPC_MOOC_STOPWATCH_FALLBACK_H
