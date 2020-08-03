use core::fmt::Debug;
use downcast_rs::{impl_downcast, DowncastSync};

/// trait for kernel object
pub trait KernelObject: DowncastSync + Debug {
    /// obtain object's id
    fn id(&self) -> KoID;
    /// obtain type name
    fn type_name(&self) -> &str;
    /// obtain object's name
    fn name(&self) -> String;
    /// set object's name;
    fn set_name(&self, new_name: &str);
}
impl_downcast!(sync KernelObject);
// type for kernel object
type KoID = u64;

use alloc::string::String;
use spin::Mutex;

#[derive(Debug)]
struct DummyObject {
    id: KoID,
    inner: Mutex<DummyObjectInner>,
}

// mutable part of kernel object
#[derive(Default, Debug)]
struct DummyObjectInner {
    name: String,
}

use alloc::sync::Arc;
use core::sync::atomic::*;

impl DummyObject {
    /// create a DummyObject
    fn new() -> Arc<Self> {
        Arc::new(DummyObject {
            id: Self::next_koid(),
            inner: Default::default(),
        })
    }

    /// generate a unique id
    fn next_koid() -> KoID {
        static NEXT_KOID: AtomicU64 = AtomicU64::new(1024);
        NEXT_KOID.fetch_add(1, Ordering::SeqCst)
    }
}

impl KernelObject for DummyObject {
    fn id(&self) -> KoID {
        self.id
    }
    fn type_name(&self) -> &str {
        "KernelObject"
    }
    fn name(&self) -> String {
        self.inner.lock().name.clone()
    }
    fn set_name(&self, new_name: &str) {
        self.inner.lock().name = String::from(new_name);
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn dummy_object() {
        let o1 = DummyObject::new();
        let o2 = DummyObject::new();
        assert_ne!(o1.id(), o2.id());
        assert_eq!(o1.type_name(), "KernelObject");
        assert_eq!(o1.name(), "");
        o1.set_name("object1");
        assert_eq!(o1.name(), String::from("object1"));
    }

    #[test]
    fn downcast() {
        let dummy = DummyObject::new();
        let object: Arc<dyn KernelObject> = dummy;
        let _result:Arc < DummyObject >= object.downcast_arc::<DummyObject>().unwrap();
    }
}