//! 调用 Machine 层的操作
//
#![allow(unused)]

const SBI_SET_TIMER: usize = 0;
const SBI_CONSOLE_PUTCHAR: usize = 1;
const SBI_CONSOLE_GETCHAR: usize = 2;
const SBI_CLEAR_IPI: usize = 3;
const SBI_SEND_IPI: usize = 4;
const SBI_REMOTE_FENCE_I: usize = 5;
const SBI_REMOTE_SFENCE_VMA: usize = 6;
const SBI_REMOTE_SFENCE_VMA_ASID: usize = 7;
const SBI_SHUTDOWN: usize = 8;

/// SBI 调用
#[inline(always)]
fn sbi_call(which: usize, arg0: usize, arg1: usize, arg2: usize) -> usize {
    let ret;
    unsafe {
        llvm_asm!("ecall"
                  : "={x10}" (ret)
                  : "{x10}" (arg0), "{x11}" (arg1), "{x12}" (arg2), "{x17}" (which)
                  : "memory" // 加入 memory 选项
                  : "volatile"); // 说明这些内存访问是volatile 的，防止编译器做激进的优化（例如调换指令顺序等破坏 SBI 调用行为的优化
    }
    ret
}

/// 向控制台输出一个字符
///
/// 需要注意，我们不能直接使用Rust 中的 char 类型
pub fn console_putchar(c: usize) {
    sbi_call(SBI_CONSOLE_PUTCHAR, c, 0, 0);
}

/// 调用 SBI_SHUTDOWN 来关闭操作系统（直接推出 QEMU ）
pub fn shutdown() -> ! {
    sbi_call(SBI_SHUTDOWN, 0, 0, 0);
    unreachable!()
}
