use bevy::prelude::*;
use bevy_mod_picking::*;
fn main() {
    App::build()
        .insert_resource(Msaa { samples: 4 })
        .insert_resource(WindowDescriptor {
            title: "Chess".to_string(),
            width: 900.0,
            height: 900.0,
            ..Default::default()
        })
        .add_plugins(DefaultPlugins)
        .add_startup_system(setup.system())
        .run();
}

fn setup(mut commands: Commands) {
    commands
        .spawn_bundle(PbrBundle {
            mesh: meshes.add(Mesh::from(shape::Plane { size: 8.0 })),
            material: materials.add(Color::rgb(1.0, 0.9, 0.9).into()),
            transform: Transform::from_translation(Vec3::new(4.0, 0.0, 4.0)),
            ..Default::default()
        })
        // camera
        .spawn_bundle(LightBundle {
            transform: Transform::from_translation(Vec3::new(4.0, 8.0, 4.0)),
            ..Default::default()
        });
}

fn create_board(
    mut commands: Commands,
    mut meshes: ResMut<Asset<Mesh>>,
    mut materials: ResMut<Asset<StandardMaterial>>,
) {
}
