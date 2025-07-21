from typing import Dict, Optional, Callable, Union
from ppcgrader.quantity import Quantity, Unit
from ppcgrader.doc_builder import DocumentBuilder, Document, ListBuilder, strong

from dataclasses import dataclass

CACHE_LINE = 64


@dataclass
class ProfileData:
    exclude_kernel: bool = None
    kernel_time_warning: bool = None
    generic_cache: bool = None
    wallclock: Quantity = None
    cpu_time: Quantity = None
    sys_time: Quantity = None
    num_threads: Quantity = None
    cycles: Quantity = None
    freq: Quantity = None
    instructions: Quantity = None
    ipc: Quantity = None
    instr_per_wall: Quantity = None
    instr_per_cpu: Quantity = None
    branches: Quantity = None
    branch_pct: Quantity = None
    branch_misses: Quantity = None
    branch_miss_pct: Quantity = None
    sys_pct: Quantity = None
    l3_refs: Quantity = None
    l3_misses: Quantity = None
    l3_miss_pct: Quantity = None
    l3_read: Quantity = None
    l3_read_rate: Quantity = None
    ram_read: Quantity = None
    ram_read_rate: Quantity = None
    l1_refs: Quantity = None
    l1_misses: Quantity = None
    l1_miss_pct: Quantity = None
    l2_read: Quantity = None
    l2_read_rate: Quantity = None
    l1_inst_per_access: Quantity = None
    page_faults: Quantity = None
    page_fault_rate: Quantity = None
    context_switches: Quantity = None
    context_switch_rate: Quantity = None
    cpu_migrations: Quantity = None
    cpu_migration_rate: Quantity = None

    # task-specific quantities
    operations: Quantity = None
    operations_name: str = None
    ops_per_sec: Quantity = None
    instr_per_op: Quantity = None


def optional_binary_op(a: Optional[float], b: Optional[float],
                       op: Callable[[float, float], float]) -> Optional[float]:
    if a is None or b is None:
        return None

    return op(a, b)


def optional_div(num: Optional[float],
                 den: Optional[float]) -> Optional[float]:
    if den == 0:
        return None
    return optional_binary_op(num, den, lambda x, y: x / y)


def optional_gibi(num: Optional[float]) -> Optional[float]:
    return optional_div(num, 1024 * 1024 * 1024)


def optional_product(num: Optional[float],
                     den: Optional[float]) -> Optional[float]:
    return optional_binary_op(num, den, lambda x, y: x * y)


def optional_percent(num: Optional[float], den: Optional[float]) -> Quantity:
    if num is None or den is None or den == 0:
        return Quantity(None, Unit.Percent)
    else:
        return Quantity(100 * num / den, Unit.Percent)


def generate_derived_statistics(stat: Dict[str, float]) -> ProfileData:
    wallclock = stat.get('perf_wall_clock_ns', None)
    enabled = stat.get('perf_time_enabled_ns', None)
    running = stat.get('perf_time_running_ns', None)
    usr_time = stat.get('perf_time_usr_ns', None)
    sys_time = stat.get('perf_time_sys_ns', None)
    instrs = stat.get('perf_instructions', None)
    cycles = stat.get('perf_cycles', None)
    branches = stat.get('perf_branches', None)
    branch_misses = stat.get('perf_branch_misses', None)

    if wallclock is None or wallclock == 0:
        return ProfileData()

    wallclock_secs = optional_div(wallclock, 1e9)
    exclude_kernel = stat.get('perf_exclude_kernel', True)

    if usr_time is not None and sys_time is not None:
        total_time = usr_time + sys_time
        if exclude_kernel:
            running = usr_time
    elif running is not None:
        total_time = running
    else:
        # one last try: this might be an old record, where the total running time
        # is recorded in perf_cpu_time_ns
        running = stat.get('perf_cpu_time_ns', None)
        total_time = running

    result = ProfileData()
    result.exclude_kernel = exclude_kernel
    result.kernel_time_warning = False
    result.wallclock = Quantity(wallclock_secs, Unit.Seconds)
    result.cpu_time = Quantity(optional_div(total_time, 1e9), Unit.Seconds)
    result.sys_time = Quantity(optional_div(sys_time, 1e9), Unit.Seconds)
    result.num_threads = Quantity(optional_div(total_time, wallclock),
                                  Unit.Count)
    result.cycles = Quantity(cycles, Unit.Event)
    result.freq = Quantity(optional_div(cycles, optional_div(running, 1e9)),
                           Unit.Hertz)
    result.instructions = Quantity(instrs, Unit.Event)
    result.ipc = Quantity(optional_div(instrs, cycles), Unit.EventRate)
    result.instr_per_wall = Quantity(optional_div(instrs, wallclock),
                                     Unit.EventRate)
    result.instr_per_cpu = Quantity(optional_div(instrs, running),
                                    Unit.EventRate)
    result.branches = Quantity(branches, Unit.Count)
    result.branch_pct = optional_percent(branches, instrs)
    result.branch_misses = Quantity(branch_misses, Unit.Count)
    result.branch_miss_pct = optional_percent(branch_misses, branches)

    # only record sys_pct if there is a reasonably large fraction
    if sys_time is not None and total_time is not None and sys_time > 0.01 * total_time and sys_time >= 1e7:
        result.sys_pct = optional_percent(sys_time, total_time)
        result.kernel_time_warning = exclude_kernel
    else:
        result.sys_pct = Quantity(None, Unit.Percent)

    generic_cache = False
    l3_refs = stat.get('perf_l3_read_refs', None)
    l3_misses = stat.get('perf_l3_read_misses', None)
    if l3_refs is None:
        # the generic cache events. their meaning is a bit diffuse, so they are only here as a fallback
        l3_refs = stat.get('perf_cache_refs', None)
        l3_misses = stat.get('perf_cache_misses', None)
        if l3_refs is not None:
            generic_cache = True

    result.generic_cache = generic_cache
    read_bytes = Quantity(optional_product(l3_refs, CACHE_LINE), Unit.Bytes)
    miss_bytes = Quantity(optional_product(l3_misses, CACHE_LINE), Unit.Bytes)

    result.l3_refs = Quantity(l3_refs, Unit.Event)
    result.l3_misses = Quantity(l3_misses, Unit.Event)
    result.l3_miss_pct = optional_percent(l3_misses, l3_refs)
    result.l3_read = read_bytes
    result.l3_read_rate = Quantity(
        optional_div(read_bytes.value, wallclock_secs), Unit.BytesPerSecond)
    result.ram_read = miss_bytes
    result.ram_read_rate = Quantity(
        optional_div(miss_bytes.value, wallclock_secs), Unit.BytesPerSecond)

    l1_refs = stat.get('perf_l1_read_refs', None)
    l1_misses = stat.get('perf_l1_read_misses', None)

    miss_bytes = optional_product(l1_misses, CACHE_LINE)
    result.l1_refs = Quantity(l1_refs, Unit.Event)
    result.l1_misses = Quantity(l1_misses, Unit.Event)
    result.l1_miss_pct = optional_percent(l1_misses, l1_refs)
    result.l2_read = Quantity(miss_bytes, Unit.Bytes)
    result.l2_read_rate = Quantity(optional_div(miss_bytes, wallclock_secs),
                                   Unit.BytesPerSecond)
    result.l1_inst_per_access = Quantity(optional_div(instrs, l1_refs),
                                         Unit.EventRate)

    page_faults = stat.get('perf_page_faults', None)
    result.page_faults = Quantity(page_faults, Unit.Event)
    result.page_fault_rate = Quantity(
        optional_div(page_faults, wallclock_secs), Unit.EventRate)

    context_switches = stat.get('perf_context_switches', None)
    result.context_switches = Quantity(context_switches, Unit.Event)
    result.context_switch_rate = Quantity(
        optional_div(context_switches, wallclock_secs), Unit.EventRate)

    cpu_migrations = stat.get('perf_cpu_migrations', None)
    result.cpu_migrations = Quantity(cpu_migrations, Unit.Event)
    result.cpu_migration_rate = Quantity(
        optional_div(cpu_migrations, wallclock_secs), Unit.EventRate)

    ops = stat.get('operations', None)
    result.operations_name = stat.get('operations_name', None)
    result.operations = Quantity(ops, Unit.Count)
    result.ops_per_sec = Quantity(optional_div(ops, wallclock_secs),
                                  Unit.EventRate)
    result.instr_per_op = Quantity(optional_div(instrs, ops), Unit.EventRate)
    return result


def explain_task(s: ProfileData, lst: ListBuilder):
    if s.operations_name == "useful arithmetic operation":
        with lst.item() as item:
            item += f"I would expect that a typical solution for this task performs at least\n{s.operations} arithmetic operations.\n"
            if lst.mode == "term":
                item += f"→ It seems you managed to perform at least\n≈ {s.ops_per_sec} useful arithmetic operations per second.\n\n"
            else:
                item += (f"As your running time was {s.wallclock:.2f}, " +
                         "it seems that you managed to perform at least " +
                         strong(s.ops_per_sec) +
                         " useful arithmetic operations per second.")

    if s.operations_name == "rectangle evaluation":
        with lst.item() as item:
            item += f"This benchmark requires checking {s.operations} different rectangles.\n"
            if lst.mode == "term":
                item += f"→ It seems you managed to check at least\n≈ {s.ops_per_sec} rectangles per second.\n\n"
            else:
                item += (f"As your running time was {s.wallclock:.2f}, " +
                         "it seems that you managed to check at least " +
                         strong(s.ops_per_sec) + " rectangles per second.\n\n")


def explain_time(s: ProfileData, lst: ListBuilder):
    with lst.item() as item:
        item += f"Your code used { s.wallclock:.3f } of wallclock time, and "
        item += f"{ s.cpu_time:.3f } of CPU time"
        item += lst.alt(web=", so you used ", term="\n→ you used ")
        item += strong(f"{s.num_threads:.1f}"
                       ) + " simultaneous hardware threads on average.\n"
        if s.sys_pct and s.sys_pct > 1:
            if lst.mode == "web":
                item += f"It seems { s.sys_time:.3f } (≈{ s.sys_pct }) of the running time was spent outside user space."
            else:
                item += f'{ s.sys_time:.3f } ({ s.sys_pct }) were spent outside user space.\n'
    if s.kernel_time_warning:
        with lst.item() as item:
            item += lst.alt(
                web="Warning: ", term="WARNING: "
            ) + "No measurements were performed inside kernel calls.\nThe numbers below may be "
            item += strong('inaccurate') + "."


def explain_freq(s: ProfileData, lst: ListBuilder):
    with lst.item() as item:
        item += f"The total number of clock cycles was { s.cycles }"
        item += lst.alt(
            web=
            ", and therefore it seems that the average clock frequency of the CPU was ",
            term="\n→ CPU was running at ")
        item += strong(f'{s.freq}') + "."


def explain_inst(s: ProfileData, lst: ListBuilder):
    with lst.item() as item:
        item += f"The CPU executed {s.instructions} machine-language instructions\n≈ {s.instr_per_wall} instructions per nanosecond (wallclock)\n"
        item += f"≈ {s.instr_per_cpu} instructions per nanosecond (CPU time)\n"
        item += "≈ " + strong(f'{s.ipc}') + " instructions per clock cycle."
        if s.operations_name is not None and lst.mode == "term":
            item += "\n→ It seems you used " + strong(
                f"{s.instr_per_op}"
            ) + f" machine language instructions\n  per {s.operations_name}."

    if s.operations_name is not None and lst.mode == "web":
        with lst.item() as item:
            item += "It seems you used " + strong(
                s.instr_per_op
            ) + f" machine language instructions per {s.operations_name}."

    with lst.item() as item:
        item += f"{s.branch_pct} of the instructions were branches\nand " + strong(
            s.branch_miss_pct) + " of them were mispredicted."


def explain_switches(s: ProfileData, lst: ListBuilder):
    with lst.item() as item:
        item += f"During the runtime of the program,\n{ s.cpu_migrations } CPU-migrations (≈{ s.cpu_migration_rate } per sec) and\n"
        item += f"{ s.context_switches } context switches (≈{ s.context_switch_rate } per sec) occurred."


def explain_page_faults(s: ProfileData, lst: ListBuilder):
    with lst.item() as item:
        item += f"Your program experienced {s.page_faults} page faults,\nwith " + strong(
            s.page_fault_rate) + " faults per second."


def explain_cache(s: ProfileData, lst: ListBuilder):
    with lst.item() as item:
        item += f"Your code read {s.l3_refs} times from L3 cache"
        item += lst.alt(web=", with a miss rate of ",
                        term=".\nThe miss rate was ") + strong(
                            s.l3_miss_pct) + ".\n"
        item += lst.alt(
            web=f"With a cache-line size of 64 bytes, this corresponds to ≈ ",
            term="≈ ")
        item += strong(s.l3_read) + f" ≈ {s.l3_read_rate} "
        item += f"of data transfer between L3 and L2 cache"
        item += lst.alt(web=", and ≈ ", term="\n≈ ") + strong(
            s.ram_read) + f" ≈ {s.ram_read_rate} "
        item += f"of data transfer between RAM and L3 cache."

    if s.generic_cache:
        with lst.item() as item:
            item += f'(Cache usage was measured using system-specific CACHE_REFS event,\n'
            item += f'so these numbers might not correspond exactly to L3 reads)\n'

    with lst.item() as item:
        item += f"Your code read {s.l1_refs} times from L1 cache"
        item += lst.alt(web=", with a miss rate of ",
                        term=".\nThe miss rate was ") + strong(
                            s.l1_miss_pct) + ".\n"
        item += lst.alt(
            web=f"With a cache-line size of 64 bytes, this corresponds to ≈ ",
            term="≈ ")
        item += strong(s.l2_read) + f" ≈ {s.l2_read_rate}"
        item += f" of data transfer between L2 and L1 cache.\n"
        item += f"Your code performed " + strong(
            s.l1_inst_per_access
        ) + " instructions per L1 cache access."  #, and {strong(s.l2_inst_per_access)} instructions per L2 cache access."


def explain_profiling(stat: ProfileData, mode: str) -> Document:
    builder = DocumentBuilder(mode)
    if stat is None or not stat.wallclock:
        with builder.text() as txt:
            txt += "I am sorry, the benchmark is missing timing information, so I cannot say anything interesting."
    elif stat.wallclock < 0.001:
        with builder.text() as txt:
            txt += "This benchmark took just a fraction of a millisecond, "
            txt += "so it does not make sense to try to show more detailed statistics."
    else:
        with builder.list() as lst:
            explain_task(stat, lst)
            explain_time(stat, lst)
            explain_freq(stat, lst)
            explain_inst(stat, lst)
            explain_switches(stat, lst)
            explain_page_faults(stat, lst)
            explain_cache(stat, lst)

    return builder.build()
