#![no_std]
#![no_main]
#![feature(global_asm)]
#![feature(llvm_asm)]
#![feature(panic_info_message)]
#[macro_use]
mod console;
mod interrupt;
mod panic;
mod sbi;

// - `#![feature(global_asm)]`
//   内嵌整个汇编文件
// 汇编编写的程序入口，具体见该文件
global_asm!(include_str!("entry.asm"));

#[no_mangle]
pub extern "C" fn rust_main() {
    // 初始化各种模块
    interrupt::init();
    println!("Hello rCore Tutorial!");

    unsafe { llvm_asm!("ebreak"::::"volatile") }
}
