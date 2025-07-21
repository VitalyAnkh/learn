#ifndef PPC_MOOC_EVENT_MAPPING_H
#define PPC_MOOC_EVENT_MAPPING_H

#include "perf/counters.h"

#include <string>
#include <unordered_map>
#include <variant>

#include <linux/perf_event.h>

namespace ppc::detail {

struct cache_event_config {
    perf_hw_cache_id cache;
    perf_hw_cache_op_id op;
    perf_hw_cache_op_result_id result;
};

struct event_info {
    perf_type_id type;
    std::variant<perf_hw_id, cache_event_config, perf_sw_ids> config;
};

using event_info_mapping_t = std::unordered_map<std::string, event_info>;

// Utility macro to make defining cache event data easier/shorter. Will be #undefed below
#define PPC_CACHE_EVENT_CONFIG(CACHE, OP, RESULT)                                                                                                \
    {                                                                                                                                            \
        PERF_TYPE_HW_CACHE, cache_event_config { PERF_COUNT_HW_CACHE_##CACHE, PERF_COUNT_HW_CACHE_OP_##OP, PERF_COUNT_HW_CACHE_RESULT_##RESULT } \
    }

inline event_info_mapping_t get_event_info_mapping() {
    using namespace ppc::perf_counters;
    // clang-format off
    event_info_mapping_t mapping{
        // hardware events
        {CYCLES,           {PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES}},
        {INSTRUCTIONS,     {PERF_TYPE_HARDWARE, PERF_COUNT_HW_INSTRUCTIONS}},
        {CACHE_REFS,       {PERF_TYPE_HARDWARE, PERF_COUNT_HW_CACHE_REFERENCES}},
        {CACHE_MISSES,     {PERF_TYPE_HARDWARE, PERF_COUNT_HW_CACHE_MISSES}},
        {BRANCHES,         {PERF_TYPE_HARDWARE, PERF_COUNT_HW_BRANCH_INSTRUCTIONS}},
        {BRANCH_MISSES,    {PERF_TYPE_HARDWARE, PERF_COUNT_HW_BRANCH_MISSES}},
        {BUS_CYCLES,       {PERF_TYPE_HARDWARE, PERF_COUNT_HW_BUS_CYCLES}},
        {STALLED_FRONTEND, {PERF_TYPE_HARDWARE, PERF_COUNT_HW_STALLED_CYCLES_FRONTEND}},
        {STALLED_BACKEND,  {PERF_TYPE_HARDWARE, PERF_COUNT_HW_STALLED_CYCLES_BACKEND}},
        {REF_CPU_CYCLES,   {PERF_TYPE_HARDWARE, PERF_COUNT_HW_REF_CPU_CYCLES}},

        // software events
        {SW_CPU_CLOCK,     {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_CPU_CLOCK}},
        {SW_TASK_CLOCK,    {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_TASK_CLOCK}},
        {PAGE_FAULTS,      {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_PAGE_FAULTS}},
        {CONTEXT_SWITCHES, {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_CONTEXT_SWITCHES}},
        {CPU_MIGRATIONS,   {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_CPU_MIGRATIONS}},
        {PAGE_FAULTS_MIN,  {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_PAGE_FAULTS_MIN}},
        {PAGE_FAULTS_MAJ,  {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_PAGE_FAULTS_MAJ}},
        {ALIGNMENT_FAULTS, {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_ALIGNMENT_FAULTS}},
        {EMULATION_FAULTS, {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_EMULATION_FAULTS}},
        {SW_DUMMY_EVENT,   {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_DUMMY}},
        {BPF_OUTPUT,       {PERF_TYPE_SOFTWARE, PERF_COUNT_SW_BPF_OUTPUT}},

        // cache events
        {L1_READ_REF,      PPC_CACHE_EVENT_CONFIG(L1D, READ, ACCESS)},
        {L1_READ_MISS,     PPC_CACHE_EVENT_CONFIG(L1D, READ, MISS)},
        {L1_WRITE_REF,     PPC_CACHE_EVENT_CONFIG(L1D, WRITE, ACCESS)},
        {L1_WRITE_MISS,    PPC_CACHE_EVENT_CONFIG(L1D, WRITE, MISS)},
        {L1_PREFETCH_REF,  PPC_CACHE_EVENT_CONFIG(L1D, PREFETCH, ACCESS)},
        {L1_PREFETCH_MISS, PPC_CACHE_EVENT_CONFIG(L1D, PREFETCH, MISS)},
        {L3_READ_REF,      PPC_CACHE_EVENT_CONFIG(LL, READ, ACCESS)},
        {L3_READ_MISS,     PPC_CACHE_EVENT_CONFIG(LL, READ, MISS)},
        {L3_WRITE_REF,     PPC_CACHE_EVENT_CONFIG(LL, WRITE, ACCESS)},
        {L3_WRITE_MISS,    PPC_CACHE_EVENT_CONFIG(LL, WRITE, MISS)},
        {L3_PREFETCH_REF,  PPC_CACHE_EVENT_CONFIG(LL, PREFETCH, ACCESS)},
        {L3_PREFETCH_MISS, PPC_CACHE_EVENT_CONFIG(LL, PREFETCH, MISS)},
    };
    // clang-format on
    return mapping;
}

#undef PPC_CACHE_EVENT_CONFIG

inline event_info get_event_info(const std::string &name) {
    static event_info_mapping_t mapping = get_event_info_mapping();
    return mapping.at(name);
}

struct FillInVisitor {
    std::uint64_t operator()(perf_hw_id id) {
        return id;
    }

    std::uint64_t operator()(perf_sw_ids id) {
        return id;
    }

    std::uint64_t operator()(cache_event_config cache) {
        return (cache.cache) |
               (cache.op << 8) |
               (cache.result << 16);
    }
};

/// \brief Given an event name `event`, this fills in the corresponding `type` and `config` values in the `perf_event_attr` object.
/// \throw std::out_of_range if the `event` is not known.
inline void fill_in(struct perf_event_attr &pe, const std::string &event) {
    event_info info = get_event_info(event);
    pe.type = info.type;
    pe.config = std::visit(FillInVisitor{}, info.config);
}

} // namespace ppc::detail

#endif // PPC_MOOC_EVENT_MAPPING_H
