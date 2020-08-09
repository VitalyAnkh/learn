#![feature(llvm_asm)]
#![feature(naked_functions)]
use std::io::Write;

const SSIZE: isize = 1024;
static mut S_PTR: *const u8 = 0 as *const u8;

#[derive(Debug, Default)]
#[repr(C)]
struct ThreadContext {
    rsp: u64,
    r15: u64,
    r14: u64,
    r13: u64,
    r12: u64,
    rbx: u64,
    rbp: u64,
}

fn hello() {
    println!("I love waking up on a new stack!");
    print_stack("AFTER.txt");

    loop {}
}

fn print_stack(filename: &str) {
    let mut f = std::fs::File::create(filename).unwrap();
    unsafe {
        for i in (0..SSIZE).rev() {
            writeln!(
                f,
                "mem: {}, val: {}",
                S_PTR.offset(i as isize) as usize,
                *S_PTR.offset(i as isize)
            )
            .expect("Error writing to file.");
        }
    }
}
fn main() {
    let mut ctx = ThreadContext::default();
    let mut stack = vec![0_u8; SSIZE as usize];
    let stack_ptr = stack.as_mut_ptr();

    unsafe {
        S_PTR = stack_ptr;
        std::ptr::write(stack_ptr.offset(SSIZE - 16) as *mut u64, hello as u64);
        print_stack("BEFORE.txt");
        ctx.rsp = stack_ptr.offset(SSIZE - 16) as u64;
        gt_switch(&mut ctx);
    }
}
unsafe fn gt_switch(new: *const ThreadContext) {
    llvm_asm!("
        mov 0x00($0), %rsp
        ret"
              :
              : "r"(new)
              :
              : "alignstack"
    );
}
