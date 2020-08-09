#![feature(llvm_asm)]
#![feature(naked_functions)]

const DEFAULT_STACK_SIZE: usize = 1024 * 1024 * 2;
const MAX_THREADS: usize = 4;
static mut RUNTIME: usize = 0;

pub struct Runtime {
    threads: Vec<Thread>,
    current: usize,
}
#[derive(Eq, PartialEq, Debug)]
enum State {
    Available,
    Running,
    Ready,
}

struct Thread {
    id: usize,
    stack: Vec<u8>,
    ctx: ThreadContext,
    state: State,
}

impl Thread {
    // TODO: 用Default 的default 方法替换new
    fn new(id: usize) -> Self {
        Thread {
            id,
            stack: vec![0_u8; DEFAULT_STACK_SIZE],
            ctx: ThreadContext::default(),
            state: State::Available,
        }
    }
}

impl Runtime {
    pub fn new() -> Self {
        let base_thread = Thread {
            id: 0,
            stack: vec![0_u8; DEFAULT_STACK_SIZE],
            ctx: ThreadContext::default(),
            state: State::Running,
        };

        let mut threads = vec![base_thread];
        let mut available_threads: Vec<Thread> = (1..MAX_THREADS).map(|i| Thread::new(i)).collect();
        threads.append(&mut available_threads);
        Runtime {
            threads,
            current: 0,
        }
    }

    pub fn init(&self) {
        unsafe {
            let r_ptr: *const Runtime = self;
            RUNTIME = r_ptr as usize;
        }
    }
    pub fn run(&mut self) -> ! {
        while self.t_yield() {}
        std::process::exit(0);
    }

    fn t_return(&mut self) {
        if self.current != 0 {
            self.threads[self.current].state = State::Available;
            self.t_yield();
        }
    }
    fn t_yield(&mut self) -> bool {
        let mut pos = self.current;
        if self.threads[pos].state != State::Ready {
            pos += 1;
            if pos == self.threads.len() {
                pos = 0;
            }
            // 这一步是什么意思？
            // pos = self.current ，而 pos 初值是current 然后加1，
            // 还等于 self.current 的话，说明被赋值为0了
            // 说明现在的线程是base 线程
            if pos == self.current {
                return false;
            }
        }
        if self.threads[self.current].state != State::Available {
            self.threads[self.current].state = State::Ready;
        }

        self.threads[pos].state = State::Running;
        let old_pos = self.current;
        self.current = pos;

        unsafe {
            switch(&mut self.threads[old_pos].ctx, &self.threads[pos].ctx);
        }

        // Prevents compiler from optmizing our codes away on Windows
        self.threads.len() > 0
    }

    pub fn spawn(&mut self, f: fn()) {
        let available = self
            .threads
            .iter_mut()
            .find(|t| t.state == State::Available)
            .expect("no available threads");
        let size = available.stack.len();

        unsafe {
            let s_ptr = available.stack.as_mut_ptr().offset(size as isize);
            let s_ptr = (s_ptr as usize & !15) as *mut u8;
            std::ptr::write(s_ptr.offset(-16) as *mut u64, guard as u64);
            std::ptr::write(s_ptr.offset(-24) as *mut u64, skip as u64);
            std::ptr::write(s_ptr.offset(-32) as *mut u64, f as u64);
            available.ctx.rsp = s_ptr.offset(-32) as u64;
        }
        available.state = State::Ready;
    }
}
fn guard() {
    unsafe {
        let rt_ptr = RUNTIME as *mut Runtime;
        (*rt_ptr).t_return();
    }
}

#[naked]
fn skip() {}

#[naked]
#[inline(never)]
unsafe fn switch(old: *mut ThreadContext, new: *const ThreadContext) {
    llvm_asm!(
            "
            mov %rsp, 0x00($0)
            mov %r15, 0x08($0)
            mov %r14, 0x10($0)
            mov %r13, 0x18($0)
            mov %r12, 0x20($0)
mov %rbx, 0x28($0)
mov %rbp, 0x30($0)

mov 0x00($1), %rsp
mov 0x08($1), %r15
mov 0x10($1), %r14
mov 0x18($1), %r13
mov 0x20($1), %r12
mov 0x28($1), %rbx
mov 0x30($1), %rbp
ret"
    :
    : "r"(old), "r"(new)
    :
    : "volatile", "alignstack");
}
pub fn yield_thread() {
    unsafe {
        let rt_ptr = RUNTIME as *mut Runtime;
        (*rt_ptr).t_yield();
    }
}

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
fn main() {
    let mut runtime = Runtime::new();
    runtime.init();
    runtime.spawn(|| {
        println!("Thread 1 starting!");
        let id = 1;
        for i in 1..10 {
            println!("thread: {}, counter: {}", id, i);
            yield_thread();
        }
        println!("Thread 1 finished!");
    });

    runtime.spawn(|| {
        println!("Thread 2 starting!");
        let id = 2;
        for i in 0..15 {
            println!("thread: {}, counter: {}", id, i);
            yield_thread();
        }
        println!("Thread {} finished!", id);
    });
    runtime.run();
}
