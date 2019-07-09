#[derive(Debug)]
struct Person{
    name:String,
    age:u16,
    money:f64,
}
#[derive(Debug)]
struct Castle{
    name:&'static str
}
#[derive(Debug)]
struct Family{
    name:String,
    members:Vec<Person>,
    castle:Castle,
    farm_size:u16,
}

fn kill_person(Person{money:money,age:_,name:name}:Person){
    println!("I killed {} and got {} money!",name,money);
}

fn kill_family(Family{members:people,name:name,castle:_,farm_size:_}:Family){
    println!("I kill family {}",name);
    for p in people{
        kill_person(p);
    }
}

fn main(){
    let JoJo=Person{
        name:String::from("JoJo"),
        age:8,
        money:233.3,
    };
    let VitalyR=Person{
        name:String::from("VitalyR"),
        age:20,
        money:8.8,
    };
    let JoJoFamily=Family{
        name:String::from("JoJoFamily"),
        members:vec![JoJo,VitalyR],
        castle:Castle{name:"fuckinggoodneverends"},
        farm_size:3423,
    };
    let Family{members:members,name:jojo_family_name,castle:_,farm_size:farm_size}:Family=JoJoFamily;
    for p in members{
        kill_person(p);
    }
    dbg!(farm_size);
//    dbg!(JoJo);
}