const DTHETA: f64 = 0.01;
const DPHI: f64 = 0.01;

const R1: f64 = 1.0;
const R2: f64 = 2.0;
const K2: f64 = 5.0;

const SCREEN_SIZE: (usize, usize) = (320, 240);

const K1: f64 = SCREEN_SIZE.0 as f64 * K2 * 1.0 / (4.0 * (R1 + R2));

const CHARS: &str = &".,-~:;=!*#$@";

fn render_frame(a: f64, b: f64) {
    use std::f64::consts::PI;

    let cos_a = a.cos();
    let sin_a = a.sin();
    let cos_b = b.cos();
    let sin_b = b.sin();

    let mut output = [[' '; SCREEN_SIZE.1]; SCREEN_SIZE.0];
    let mut zbuffer = [[0f64; SCREEN_SIZE.1]; SCREEN_SIZE.0];

    let mut theta = 0.0;

    while theta < 2.0 * PI {
        let cos_th = theta.cos();
        let sin_th = theta.sin();

        let mut phi = 0.0;

        while phi < 2.0 * PI {
            let cos_phi = phi.cos();
            let sin_phi = phi.sin();

            let cx = R2 + R1 * cos_th;
            let cy = R1 * sin_th;

            let x = cx * (cos_b * cos_phi + sin_a * sin_b * sin_phi) - cy * cos_a * sin_b;
            let y = cx * (sin_b * cos_phi - sin_a * cos_b * sin_phi) + cy * cos_a * cos_b;
            let iz = 1.0 / (K2 + cos_a * cx * sin_phi + cy * sin_a);

            let xp = (SCREEN_SIZE.0 as f64 / 2.0 + K1 * iz * x) as usize;
            let yp = (SCREEN_SIZE.1 as f64 / 2.0 - K1 * iz * y) as usize;

            let l = (cos_phi * cos_th * sin_b - cos_a * cos_th * sin_phi - sin_a * sin_th
                + cos_b * (cos_a * sin_th - cos_th * sin_a * sin_phi));

            if l > -0.0 {
                if iz > zbuffer[xp][yp] {
                    zbuffer[xp][yp] = iz;

                    let luminance_index = (l * 8.0) as usize;

                    if xp >= 0 && xp < SCREEN_SIZE.0 && yp >= 0 && yp < SCREEN_SIZE.1 {
                        output[xp][yp] = CHARS.chars().nth(luminance_index).unwrap();
                    }
                }
            }

            phi += DPHI;
        }

        theta += DTHETA;
    }

    for j in 0..SCREEN_SIZE.1 {
        for i in 0..SCREEN_SIZE.0 {
            print!("{}", output[i][j]);
        }
        println!("");
    }
}

fn main() {
    render_frame(
        90.0 * std::f64::consts::PI / 180.0,
        0.0 * std::f64::consts::PI / 180.0,
    );
}
