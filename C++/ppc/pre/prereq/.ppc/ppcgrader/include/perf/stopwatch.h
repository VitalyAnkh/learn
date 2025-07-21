#ifndef PPC_MOOC_STOPWATCH_H
#define PPC_MOOC_STOPWATCH_H

#include <chrono>
#include <memory>
#include <stdexcept>
#include <unordered_map>

#include <sys/resource.h>

namespace ppc {
class Stopwatch {
  public:
    using counter_result_t = std::unordered_map<std::string, long>;
    using nanoseconds = std::chrono::nanoseconds;

    virtual ~Stopwatch() noexcept = default;

    // checked interface defined here, that validates whether a function can be called based
    // on the running state, and then relays to a virtual function for the actual implementation

    void add_counter(const std::string &name) {
        if (m_IsRunning) {
            throw std::logic_error("Cannot add counters while measurements are running");
        }
        add_counter_imp(name);
    }

    void start() {
        if (m_IsRunning) {
            throw std::logic_error("Cannot start performance counters; already running.");
        }
        m_BeginWallTime = std::chrono::steady_clock::now();
        start_imp();
        m_IsRunning = true;
    }
    void stop() {
        if (!m_IsRunning) {
            throw std::logic_error("Trying to stop non-running performance counters");
        }
        auto end = std::chrono::steady_clock::now();
        m_ElapsedWallTime += end - m_BeginWallTime;
        stop_imp();
        m_IsRunning = false;
    }

    counter_result_t get_counters() {
        if (m_IsRunning) {
            throw std::logic_error("Cannot get counts while counters are active.");
        }
        return get_counters_imp();
    }

    nanoseconds wall_time() const {
        return m_ElapsedWallTime;
    }

  private:
    bool m_IsRunning = false;

    // actual implementations happen in these virtual functions
    virtual void start_imp() = 0;
    virtual void stop_imp() = 0;
    virtual void add_counter_imp(const std::string &name) = 0;
    virtual counter_result_t get_counters_imp() = 0;

    // simple wallclock timing using only portable c++ standard library functions
    nanoseconds m_ElapsedWallTime = nanoseconds::zero();
    std::chrono::time_point<std::chrono::steady_clock> m_BeginWallTime;
};

struct cpu_time {
    std::chrono::nanoseconds usr;
    std::chrono::nanoseconds sys;
};

inline cpu_time get_cputime() {
    using namespace std::chrono;
    struct rusage ru;
    getrusage(RUSAGE_SELF, &ru);
    auto dur_usr = seconds(ru.ru_utime.tv_sec) + microseconds(ru.ru_utime.tv_usec);
    auto dur_sys = seconds(ru.ru_stime.tv_sec) + microseconds(ru.ru_stime.tv_usec);
    return {duration_cast<nanoseconds>(dur_usr), duration_cast<nanoseconds>(dur_sys)};
}

inline std::unique_ptr<Stopwatch> make_stopwatch();
} // namespace ppc

#ifdef __linux__
#include "stopwatch_linux.h"
#else
#include "stopwatch_fallback.h"
#endif

#endif // PPC_MOOC_STOPWATCH_H
