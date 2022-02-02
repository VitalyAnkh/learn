use serde;

#[derive(PartialEq, Eq, Debug)]
enum Gender {
    Man,
    Woman,
    Undefined,
}

#[derive(PartialEq, Eq, Debug)]
struct Student<'a> {
    name: &'a str,
    id: u128,
    gender: Gender,
}

fn main() {
    let mut students: Vec<Student> = vec![];
    students.push(Student {
        name: "Tom",
        id: 1234,
        gender: Gender::Man,
    });
    dbg!(students);
}
