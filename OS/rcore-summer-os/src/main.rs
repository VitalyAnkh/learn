#![no_std]
#![no_main]
#![feature(global_asm)]
#![feature(llvm_asm)]
use core::panic::PanicInfo;

// - `#![feature(global_asm)]`
//   内嵌整个汇编文件


// 汇编编写的程序入口，具体见该文件
global_asm!(include_str!("entry.asm"));

#[panic_handler]
fn panic(_info: &PanicInfo) -> ! {
    loop {}
}


#[no_mangle]
pub extern "C" fn rust_main() -> ! {
    console_putchar(b'O');
    console_putchar(b'K');
    console_putchar(b'\n');
    console_putchar(b'V');
    console_putchar(b'R');
    console_putchar(b'\n');
    loop {}
}
/// 在屏幕上输出一个字符，目前我们先不用了解其实现原理
pub fn console_putchar(ch: u8) {
    let _ret: usize;
    let arg0: usize = ch as usize;
    let arg1: usize = 0;
    let arg2: usize = 0;
    let which: usize = 1;
    unsafe {
        llvm_asm!("ecall"
             : "={x10}" (_ret)
             : "{x10}" (arg0), "{x11}" (arg1), "{x12}" (arg2), "{x17}" (which)
             : "memory"
             : "volatile"
        );
    }
}