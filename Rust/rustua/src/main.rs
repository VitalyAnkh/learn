use bevy::prelude::*;

fn hello_world() {
    println!("hello, world!");
}

fn main() {
    println!("Hello, world!");
    let x = 1;
    let b = Box::new(x);
    println!("{:p}", b);
    App::build()
        .add_startup_system(add_people.system())
        .add_plugins(DefaultPlugins)
        .add_plugin(HelloPlugin)
        .run();
}

struct Person;

struct Name(String);
fn add_people(mut commands: Commands) {
    commands
        .spawn()
        .insert(Person)
        .insert(Name("Vitaly Ankh".to_string()));
    commands
        .spawn()
        .insert(Person)
        .insert(Name("Olide Ankh".to_string()));
    commands
        .spawn()
        .insert(Person)
        .insert(Name("ice100000000000000".to_string()));
}

struct GreetTimer(Timer);

fn greet_people(time: Res<Time>, mut timer: ResMut<GreetTimer>, query: Query<&Name, With<Person>>) {
    if timer.0.tick(time.delta()).just_finished() {
        for name in query.iter() {
            println!("Hello, {}!", name.0);
        }
    }
}

pub struct HelloPlugin;

impl Plugin for HelloPlugin {
    fn build(&self, app: &mut AppBuilder) {
        app.insert_resource(GreetTimer(Timer::from_seconds(2.0, true)))
            .add_startup_system(add_people.system())
            .add_system(greet_people.system());
    }
}
