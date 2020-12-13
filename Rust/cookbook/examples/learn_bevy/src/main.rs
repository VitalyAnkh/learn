use bevy::prelude::*;

pub struct HelloPlugin;

impl Plugin for HelloPlugin {
    fn build(&self, app: &mut AppBuilder) {
        app.add_resource(GreetTimer(Timer::from_seconds(2.0)))
            .add_startup_system(add_people.system())
            .add_system(greet_people.system());
    }
}

fn hello_world() {
    println!("hello, world!");
}

struct Person;
struct GreetTimer(Timer);

fn add_people(mut commands: Commands) {
    commands
        .spawn((Person, Name("Elaina Proctor".to_string())))
        .spawn((Person, Name("Renzo Hume".to_string())))
        .spawn((Person, Name("Zayna Nieves".to_string())));
}

fn greet_people(
    time: Res<Time>,
    mut timer: ResMut<GreetTimer>,
    mut query: Query<(&Person, &Name)>,
) {
    timer.0.tick(time.delta_seconds);

    if timer.0.finished {
        for (_person, name) in &mut query.iter() {
            println!("hello, {}", name.0);
        }
        timer.0.reset();
    }
}

struct Name(String);

fn main() {
    App::build()
        .add_default_plugins()
        .add_plugin(HelloPlugin)
        .run();
}
