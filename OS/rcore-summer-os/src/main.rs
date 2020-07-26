#![no_std]
#![no_main]
#![feature(global_asm)]
#![feature(llvm_asm)]
#![feature(panic_info_message)]
#[macro_use]
mod console;
mod panic;
mod sbi;

use core::panic::PanicInfo;

// - `#![feature(global_asm)]`
//   内嵌整个汇编文件

// 汇编编写的程序入口，具体见该文件
global_asm!(include_str!("entry.asm"));

#[no_mangle]
pub extern "C" fn rust_main() -> ! {
    println!("Hello rCore-Tutorial!");
    panic!("end of rust_main")
}
