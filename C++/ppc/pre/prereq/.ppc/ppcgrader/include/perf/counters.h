#ifndef PPC_MOOC_COUNTERS_H
#define PPC_MOOC_COUNTERS_H

// This name space contains named constants to identify all performance counters we support (in principle; actual availablilty
// depends on hardware and OS).

namespace ppc::perf_counters {
// these two counters are used automatically and do not need to be added with `add_counter`. They are supported
// even if we cannot use `perf_event_open`.
constexpr const char *WALL_CLOCK = "wall_clock_ns";
constexpr const char *USR_CLOCK = "time_usr_ns";
constexpr const char *SYS_CLOCK = "time_sys_ns";

// perf-counter related basic measurements
constexpr const char *TIME_ENABLED = "time_enabled_ns";
constexpr const char *TIME_RUNNING = "time_running_ns";

// possible values for `add_counter`
constexpr const char *CYCLES = "cycles";
constexpr const char *INSTRUCTIONS = "instructions";
constexpr const char *CACHE_REFS = "cache_refs";
constexpr const char *CACHE_MISSES = "cache_misses";
constexpr const char *BRANCHES = "branches";
constexpr const char *BRANCH_MISSES = "branch_misses";
constexpr const char *BUS_CYCLES = "bus_cycles";
constexpr const char *STALLED_FRONTEND = "stalled_frontend";
constexpr const char *STALLED_BACKEND = "stalled_backend";
constexpr const char *REF_CPU_CYCLES = "ref_cpu_cycles";

constexpr const char *SW_CPU_CLOCK = "cpu_clock";
constexpr const char *SW_TASK_CLOCK = "task_clock";
constexpr const char *PAGE_FAULTS = "page_faults";
constexpr const char *CONTEXT_SWITCHES = "context_switches";
constexpr const char *CPU_MIGRATIONS = "cpu_migrations";
constexpr const char *PAGE_FAULTS_MIN = "minor_faults";
constexpr const char *PAGE_FAULTS_MAJ = "major_faults";
constexpr const char *ALIGNMENT_FAULTS = "alignment_faults";
constexpr const char *EMULATION_FAULTS = "emulation_faults";
constexpr const char *SW_DUMMY_EVENT = "sw_dummy_event";
constexpr const char *BPF_OUTPUT = "bpf_output";

constexpr const char *L1_READ_REF = "l1_read_refs";
constexpr const char *L1_READ_MISS = "l1_read_misses";
constexpr const char *L1_WRITE_REF = "l1_write_refs";
constexpr const char *L1_WRITE_MISS = "l1_write_misses";
constexpr const char *L1_PREFETCH_REF = "l1_prefetch_refs";
constexpr const char *L1_PREFETCH_MISS = "l1_prefetch_misses";
constexpr const char *L3_READ_REF = "l3_read_refs";
constexpr const char *L3_READ_MISS = "l3_read_misses";
constexpr const char *L3_WRITE_REF = "l3_write_refs";
constexpr const char *L3_WRITE_MISS = "l3_write_misses";
constexpr const char *L3_PREFETCH_REF = "l3_prefetch_refs";
constexpr const char *L3_PREFETCH_MISS = "l3_prefetch_misses";
} // namespace ppc::perf_counters

#endif // PPC_MOOC_COUNTERS_H
