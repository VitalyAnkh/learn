use bevy::prelude::*;
use bevy::render::pass::ClearColor;
use bevy::{core::FixedTimestep, transform};
use rand::prelude::random;

#[derive(Default)]
struct Materials {
    head_material: Handle<ColorMaterial>,
}

struct SnakeHead;

fn main() {
    App::build()
        .insert_resource(WindowDescriptor {
            width: 800.0,
            height: 800.0,
            title: "Go around the square!".to_string(),
            ..Default::default()
        })
        .add_startup_system(setup.system().label("system_setup"))
        .add_startup_stage("game_setup", SystemStage::single(spawn_snake.system()))
        .add_system_set(
            SystemSet::new()
                .with_run_criteria(FixedTimestep::step(0.50))
                .with_system(snake_move.system()),
        )
        .add_plugins(DefaultPlugins)
        .run();
}

fn setup(mut commands: Commands, mut materials: ResMut<Assets<ColorMaterial>>) {
    commands.spawn_bundle(OrthographicCameraBundle::new_2d());
    commands.insert_resource(Materials {
        head_material: materials.add(Color::rgb(0.8, 0.0, 0.0).into()),
    });
}

fn spawn_snake(mut commands: Commands, materials: Res<Materials>) {
    commands
        .spawn_bundle(SpriteBundle {
            material: materials.head_material.clone(),
            sprite: Sprite::new(Vec2::new(5.0, 5.0)),
            transform: Transform::from_xyz(-400.0, -400.0, 0.0),
            ..Default::default()
        })
        .insert(SnakeHead);
}

fn snake_move(mut commands: Commands, mut q: Query<&mut Transform, With<SnakeHead>>) {
    for mut t in q.iter_mut() {
        t.translation.x += 1.0;
        t.translation.y += 1.0;
    }
}
