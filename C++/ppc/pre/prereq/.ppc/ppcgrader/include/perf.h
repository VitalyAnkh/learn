#ifndef PPC_PERF_H
#define PPC_PERF_H

#include <cstring>
#include <iostream>

#include "perf/counters.h"
#include "perf/stopwatch.h"

namespace ppc {
class perf {
  private:
    std::unique_ptr<ppc::Stopwatch> stopwatch;
    bool error_shown = false;

  public:
    perf() : stopwatch(make_stopwatch()) {
        char *cfg = std::getenv("PPC_PERF");
        if (!cfg || strcmp(cfg, "") == 0)
            return;

        // software events don't consume a counter register,
        // so we can always add them
        add(perf_counters::CONTEXT_SWITCHES);
        add(perf_counters::CPU_MIGRATIONS);
        add(perf_counters::PAGE_FAULTS);

        if (strcmp(cfg, "default") == 0) {
            add(perf_counters::CYCLES);
            add(perf_counters::INSTRUCTIONS);
            add(perf_counters::BRANCHES);
            add(perf_counters::BRANCH_MISSES);
        } else if (strcmp(cfg, "cache") == 0) {
            add(perf_counters::INSTRUCTIONS);
            // try to use L3 counters, and fall back to generic ones
            if (!add(perf_counters::L3_READ_REF)) {
                add(perf_counters::CACHE_REFS);
            }
            if (!add(perf_counters::L3_READ_MISS)) {
                add(perf_counters::CACHE_MISSES);
            }
            add(perf_counters::L1_READ_REF);
            add(perf_counters::L1_READ_MISS);
        }
    }

    bool add(const std::string &counter) {
        try {
            stopwatch->add_counter(counter);
            return true;
        } catch (std::system_error &error) {
            if (!error_shown) {
                std::cerr << "Could not add performance counter '" << counter << "': " << error.what() << std::endl;
                if (error.code() == std::error_code((int)std::errc::permission_denied, std::generic_category())) {
                    std::cerr << "Profiling requires that /proc/sys/kernel/perf_event_paranoid is configured to allow users to collect metrics. "
                                 "You can try running `sudo sh -c \"echo '1'>/proc/sys/kernel/perf_event_paranoid\"`"
                              << std::endl;
                    error_shown = true;
                }
            }
        } catch (std::runtime_error &error) {
            if (!error_shown) {
                std::cerr << "Could not add performance counter '" << counter << "': " << error.what() << std::endl;
                error_shown = true;
            }
        } catch (std::out_of_range &error) {
            std::cerr << "Unknown performance counter '" << counter << "' requested." << std::endl;
        }
        return false;
    }

    void start() {
        stopwatch->start();
    }

    void stop() {
        stopwatch->stop();
    }

    void print_to(std::ostream &stream) {
        auto results = stopwatch->get_counters();
        for (auto &&value : results) {
            stream << "perf_" << value.first << "\t" << value.second << '\n';
        }
    }
};
} // namespace ppc

#endif