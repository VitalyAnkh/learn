trait Cook {
    fn start(&self);
}

trait Wash {
    fn start(&self);
}

struct Chef;

impl Cook for Chef {
    fn start(&self) {
        println!("Cook::start");
    }
}

impl Wash for Chef {
    fn start(&self) {
        println!("Wash::start");
    }
}

fn main() {
    let me = Chef;
    // c.start();
    <Cook>::start(&me);
    <Chef as Wash>::start(&me);
}
