//! This example showcases a simple native custom widget that renders arbitrary
//! path with `lyon`.
mod bezier {
    // For now, to implement a custom native widget you will need to add
    // `iced_native` and `iced_wgpu` to your dependencies.
    //
    // Then, you simply need to define your widget type and implement the
    // `iced_native::Widget` trait with the `iced_wgpu::Renderer`.
    //
    // Of course, you can choose to make the implementation renderer-agnostic,
    // if you wish to, by creating your own `Renderer` trait, which could be
    // implemented by `iced_wgpu` and other renderers.
    use iced_native::{
        input, layout, Clipboard, Color, Element, Event, Font, Hasher,
        HorizontalAlignment, Layout, Length, MouseCursor, Point, Rectangle,
        Size, Vector, VerticalAlignment, Widget,
    };
    use iced_wgpu::{
        triangle::{Mesh2D, Vertex2D},
        Defaults, Primitive, Renderer,
    };
    use lyon::tessellation::{
        basic_shapes, BuffersBuilder, StrokeAttributes, StrokeOptions,
        StrokeTessellator, VertexBuffers,
    };

    pub struct Bezier<'a, Message> {
        state: &'a mut State,
        curves: &'a [Curve],
        // [from, to, ctrl]
        on_click: Box<dyn Fn(Curve) -> Message>,
    }

    #[derive(Debug, Clone, Copy)]
    pub struct Curve {
        from: Point,
        to: Point,
        control: Point,
    }

    #[derive(Default)]
    pub struct State {
        pending: Option<Pending>,
    }

    enum Pending {
        One { from: Point },
        Two { from: Point, to: Point },
    }

    impl<'a, Message> Bezier<'a, Message> {
        pub fn new<F>(
            state: &'a mut State,
            curves: &'a [Curve],
            on_click: F,
        ) -> Self
            where
                F: 'static + Fn(Curve) -> Message,
        {
            Self {
                state,
                curves,
                on_click: Box::new(on_click),
            }
        }
    }

    impl<'a, Message> Widget<Message, Renderer> for Bezier<'a, Message> {
        fn width(&self) -> Length {
            Length::Fill
        }

        fn height(&self) -> Length {
            Length::Fill
        }

        fn layout(
            &self,
            _renderer: &Renderer,
            limits: &layout::Limits,
        ) -> layout::Node {
            let size = limits
                .height(Length::Fill)
                .width(Length::Fill)
                .resolve(Size::ZERO);
            layout::Node::new(size)
        }

        fn draw(
            &self,
            _renderer: &mut Renderer,
            defaults: &Defaults,
            layout: Layout<'_>,
            cursor_position: Point,
        ) -> (Primitive, MouseCursor) {
            let mut buffer: VertexBuffers<Vertex2D, u32> = VertexBuffers::new();
            let mut path_builder = lyon::path::Path::builder();

            let bounds = layout.bounds();

            // Draw rectangle border with lyon.
            basic_shapes::stroke_rectangle(
                &lyon::math::Rect::new(
                    lyon::math::Point::new(0.5, 0.5),
                    lyon::math::Size::new(
                        bounds.width - 1.0,
                        bounds.height - 1.0,
                    ),
                ),
                &StrokeOptions::default().with_line_width(1.0),
                &mut BuffersBuilder::new(
                    &mut buffer,
                    |pos: lyon::math::Point, _: StrokeAttributes| Vertex2D {
                        position: pos.to_array(),
                        color: [0.0, 0.0, 0.0, 1.0],
                    },
                ),
            )
                .unwrap();

            for curve in self.curves {
                path_builder.move_to(lyon::math::Point::new(
                    curve.from.x,
                    curve.from.y,
                ));

                path_builder.quadratic_bezier_to(
                    lyon::math::Point::new(curve.control.x, curve.control.y),
                    lyon::math::Point::new(curve.to.x, curve.to.y),
                );
            }

            match self.state.pending {
                None => {}
                Some(Pending::One { from }) => {
                    path_builder
                        .move_to(lyon::math::Point::new(from.x, from.y));
                    path_builder.line_to(lyon::math::Point::new(
                        cursor_position.x - bounds.x,
                        cursor_position.y - bounds.y,
                    ));
                }
                Some(Pending::Two { from, to }) => {
                    path_builder
                        .move_to(lyon::math::Point::new(from.x, from.y));
                    path_builder.quadratic_bezier_to(
                        lyon::math::Point::new(
                            cursor_position.x - bounds.x,
                            cursor_position.y - bounds.y,
                        ),
                        lyon::math::Point::new(to.x, to.y),
                    );
                }
            }

            let mut tessellator = StrokeTessellator::new();

            // Draw strokes with lyon.
            tessellator
                .tessellate(
                    &path_builder.build(),
                    &StrokeOptions::default().with_line_width(3.0),
                    &mut BuffersBuilder::new(
                        &mut buffer,
                        |pos: lyon::math::Point, _: StrokeAttributes| {
                            Vertex2D {
                                position: pos.to_array(),
                                color: [0.0, 0.0, 0.0, 1.0],
                            }
                        },
                    ),
                )
                .unwrap();

            let mesh = Primitive::Mesh2D {
                origin: Point::new(bounds.x, bounds.y),
                buffers: Mesh2D {
                    vertices: buffer.vertices,
                    indices: buffer.indices,
                },
            };

            (
                Primitive::Clip {
                    bounds,
                    offset: Vector::new(0, 0),
                    content: Box::new(
                        if self.curves.is_empty()
                            && self.state.pending.is_none()
                        {
                            let instructions = Primitive::Text {
                                bounds: Rectangle {
                                    x: bounds.center_x(),
                                    y: bounds.center_y(),
                                    ..bounds
                                },
                                color: Color {
                                    a: defaults.text.color.a * 0.7,
                                    ..defaults.text.color
                                },
                                content: String::from(
                                    "Click to create bezier curves!",
                                ),
                                font: Font::Default,
                                size: 30.0,
                                horizontal_alignment:
                                HorizontalAlignment::Center,
                                vertical_alignment: VerticalAlignment::Center,
                            };

                            Primitive::Group {
                                primitives: vec![mesh, instructions],
                            }
                        } else {
                            mesh
                        },
                    ),
                },
                MouseCursor::OutOfBounds,
            )
        }

        fn hash_layout(&self, _state: &mut Hasher) {}

        fn on_event(
            &mut self,
            event: Event,
            layout: Layout<'_>,
            cursor_position: Point,
            messages: &mut Vec<Message>,
            _renderer: &Renderer,
            _clipboard: Option<&dyn Clipboard>,
        ) {
            let bounds = layout.bounds();

            if bounds.contains(cursor_position) {
                match event {
                    Event::Mouse(input::mouse::Event::Input {
                                     state: input::ButtonState::Pressed,
                                     ..
                                 }) => {
                        let new_point = Point::new(
                            cursor_position.x - bounds.x,
                            cursor_position.y - bounds.y,
                        );

                        match self.state.pending {
                            None => {
                                self.state.pending =
                                    Some(Pending::One { from: new_point });
                            }
                            Some(Pending::One { from }) => {
                                self.state.pending = Some(Pending::Two {
                                    from,
                                    to: new_point,
                                });
                            }
                            Some(Pending::Two { from, to }) => {
                                self.state.pending = None;

                                messages.push((self.on_click)(Curve {
                                    from,
                                    to,
                                    control: new_point,
                                }));
                            }
                        }
                    }
                    _ => {}
                }
            }
        }
    }

    impl<'a, Message> Into<Element<'a, Message, Renderer>> for Bezier<'a, Message>
        where
            Message: 'static,
    {
        fn into(self) -> Element<'a, Message, Renderer> {
            Element::new(self)
        }
    }
}

use bezier::Bezier;
use iced::{
    button, Align, Button, Column, Container, Element, Length, Sandbox,
    Settings, Text,
};

pub fn main() {
    Example::run(Settings {
        antialiasing: true,
        ..Settings::default()
    });
}

#[derive(Default)]
struct Example {
    bezier: bezier::State,
    curves: Vec<bezier::Curve>,
    button_state: button::State,
}

#[derive(Debug, Clone, Copy)]
enum Message {
    AddCurve(bezier::Curve),
    Clear,
}

impl Sandbox for Example {
    type Message = Message;

    fn new() -> Self {
        Example::default()
    }

    fn title(&self) -> String {
        String::from("Bezier tool - Iced")
    }

    fn update(&mut self, message: Message) {
        match message {
            Message::AddCurve(curve) => {
                self.curves.push(curve);
            }
            Message::Clear => {
                self.bezier = bezier::State::default();
                self.curves.clear();
            }
        }
    }

    fn view(&mut self) -> Element<Message> {
        let content = Column::new()
            .padding(20)
            .spacing(20)
            .align_items(Align::Center)
            .push(
                Text::new("Bezier tool example")
                    .width(Length::Shrink)
                    .size(50),
            )
            .push(Bezier::new(
                &mut self.bezier,
                self.curves.as_slice(),
                Message::AddCurve,
            ))
            .push(
                Button::new(&mut self.button_state, Text::new("Clear"))
                    .padding(8)
                    .on_press(Message::Clear),
            );

        Container::new(content)
            .width(Length::Fill)
            .height(Length::Fill)
            .center_x()
            .center_y()
            .into()
    }
}