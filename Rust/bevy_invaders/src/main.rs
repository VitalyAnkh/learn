use bevy::prelude::*;

const PLAYER_SPRITE: &str = "player_a_01.png";

fn main() {
    let mut app = App::build();
    app.insert_resource(Msaa { samples: 4 })
        .insert_resource(ClearColor(Color::rgb(0.04, 0.04, 0.04)))
        .insert_resource(WindowDescriptor {
            title: "Bevy Invaders!".to_string(),
            width: 598.0,
            height: 676.0,
            ..Default::default()
        })
        .add_plugins(DefaultPlugins);
    #[cfg(target_arch = "wasm32")]
    app.add_plugin(bevy_webgl2::WebGL2Plugin);
    app.add_startup_system(setup.system()).run();
}

/// set up a simple 3D scene
fn setup(
    mut commands: Commands,
    asset_server: Res<AssetServer>,
    mut meshes: ResMut<Assets<Mesh>>,
    mut materials: ResMut<Assets<ColorMaterial>>,
    mut windows: ResMut<Windows>,
) {
    // add entities to the world
    // plane
    // commands.spawn_bundle(PbrBundle {
    //     mesh: meshes.add(Mesh::from(shape::Plane { size: 5.0 })),
    //     material: materials.add(Color::rgb(0.3, 0.5, 0.3).into()),
    //     ..Default::default()
    // });

    // light
    // commands.spawn_bundle(LightBundle {
    //     transform: Transform::from_translation(Vec3::new(4.0, 8.0, 4.0)),
    //     ..Default::default()
    // });
    // // camera
    // commands.spawn_bundle(PerspectiveCameraBundle {
    //     transform: Transform::from_translation(Vec3::new(-2.0, 2.5, 5.0))
    //         .looking_at(Vec3::default(), Vec3::Y),
    //     ..Default::default()
    // });

    // camera
    commands.spawn_bundle(OrthographicCameraBundle::new_2d());

    // position window
    let window = windows.get_primary_mut().unwrap();
    window.set_position(IVec2::new(3870, 4830));

    let bottom = -window.height() / 2.0;
    // spawn a spite
    commands.spawn_bundle(SpriteBundle {
        material: materials.add(asset_server.load(PLAYER_SPRITE).into()),
        transform: Transform {
            translation: Vec3::new(0.0, bottom + 75.0 / 2.0 + 5.0, 10.0),
            scale: Vec3::new(0.5, 0.5, 1.0),
            ..Default::default()
        },
        ..Default::default()
    });
}
