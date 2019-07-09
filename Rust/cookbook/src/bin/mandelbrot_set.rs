use std::fs::File;
use std::io::Write;
use std::str::FromStr;

use crossbeam;
use image::{ColorType, png::PNGEncoder};
use num::Complex;

fn square_loop(mut x: f64) {
    loop {
        x *= x;
    }
}

fn escape_time(c: Complex<f64>, limit: u64) -> Option<u64> {
    let z = Complex { re: 0f64, im: 0f64 };
    for i in 0..limit {
        let z = z * z + c;
        if z.norm_sqr() > 4.0 {
            return Some(i);
        }
    }
    None
}

fn parse_pair<T: FromStr>(s: &str, seperator: char) -> Option<(T, T)> {
    match s.find(seperator) {
        None => None,
        Some(index) => match (T::from_str(&s[..index]), T::from_str(&s[index + 1..])) {
            (Ok(l), Ok(r)) => Some((l, r)),
            (_, _) => None,
        }
    }
}

fn parse_complex(s: &str) -> Option<Complex<f64>> {
    match parse_pair(s, ',') {
        None => None,
        Some((re, im)) => Some(Complex { re, im }),
    }
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 5 {
        writeln!(std::io::stderr(), "Usage: mandelbrot FILE PIXELS UPPERLEFT LOWERRIGHT").unwrap();
        writeln!(std::io::stderr(), "Example: {} mandel.png 1000x750 -1.20,0.35 -1,0.20", args[0]).unwrap();
        std::process::exit(1);
    }

    let threads = 12;


    let bounds = parse_pair(&args[2], 'x').expect("error parsing image dimensions");
    let upper_left = parse_complex(&args[3]).expect("error parsing upper left corner point");
    let lower_right = parse_complex(&args[4]).expect("error parsing lower right corner point");
    let mut pixels = vec![0; bounds.0 * bounds.1];
    let rows_per_band = bounds.1 / threads + 1;
    {
        let bands: Vec<&mut [u8]> = pixels.chunks_mut(rows_per_band * bounds.0).collect();
        crossbeam::scope(|spawner| {
            for (i, band) in bands.into_iter().enumerate() {
                let top = rows_per_band * i;
                let height = band.len() / bounds.0;
                let band_bounds = (bounds.0, height);

                let band_upper_left =
                    pixel_to_point(bounds, (0, top), upper_left, lower_right);
                let band_lower_right =
                    pixel_to_point(bounds, (bounds.0, top + height), upper_left, lower_right);
                spawner.spawn(move |_| {
                    render(band_bounds, band, band_upper_left, band_lower_right);
                });
            }
        });
        write_image(&args[1], &pixels, bounds);
    }
}

fn pixel_to_point(bounds: (usize, usize), pixel: (usize, usize), upper_left: Complex<f64>, lower_right: Complex<f64>)
                  -> Complex<f64> {
    let (width, height) = (lower_right.re - upper_left.re, upper_left.im - lower_right.im);
    Complex {
        re: upper_left.re + pixel.0 as f64 * width / bounds.0 as f64,
        im: upper_left.im - pixel.1 as f64 * height / bounds.1 as f64,
    }
}

fn render(bounds: (usize, usize), pixels: &mut [u8], upper_left: Complex<f64>, lower_right: Complex<f64>) {
    assert_eq!(pixels.len(), bounds.0 * bounds.1);
    for row in 0..bounds.1 {
        for column in 0..bounds.0 {
            let point = pixel_to_point(bounds, (row, column), upper_left, lower_right);
            pixels[row * bounds.0 + column] = match escape_time(point, 255) {
                None => 0,
                Some(t) => 255 - t as u8,
            }
        }
    }
}

fn write_image(file: &str, pixels: &[u8], bounds: (usize, usize)) -> std::io::Result<()> {
    let output = File::create(file)?;
    let encoder = PNGEncoder::new(output);
    encoder.encode(&pixels, bounds.0 as u32, bounds.1 as u32, ColorType::Gray(8));
    Ok(())
}


#[test]
fn test_pixel_to_point() {
    assert_eq!(pixel_to_point((100, 100), (25, 75), Complex { re: -1.0, im: 1.0 },
                              Complex { re: 1.0, im: -1.0 }),
               Complex { re: -0.5, im: -0.5 });
}

#[test]
fn test_parse_pair() {
    assert_eq!(parse_pair::<i32>("", ','), None);
    assert_eq!(parse_pair::<f64>("32.3,3.0", ','), Some((32.3, 3.)));
    assert_eq!(parse_pair::<u128>("342143214,42143214321", ','), Some((342143214, 42143214321)));
}
