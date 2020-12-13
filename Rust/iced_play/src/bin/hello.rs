use iced::{button, Align, Button, Column, Element, Sandbox, Settings, Text};

#[derive(Default)]
struct Hello {
    value: i32,
    button: button::State,
}

#[derive(Debug, Copy, Clone)]
enum Message {
    ButtonPressed,
}

impl Sandbox for Hello {
    type Message = Message;
    fn new() -> Hello {
        Self::default()
    }

    fn title(&self) -> String {
        String::from("Hello World from VitalyR!")
    }

    fn update(&mut self, message: Message) {
        match message {
            Message::ButtonPressed => {
                self.value += 1;
            }
        }
    }

    fn view(&mut self) -> Element<'_, Self::Message> {
        Column::new()
            .padding(20)
            .align_items(Align::Center)
            .push(
                Button::new(
                    &mut self.button,
                    Text::new(format!("You have pressed me for {} times!", self.value)),
                )
                .on_press(Message::ButtonPressed),
            )
            .into()
    }
}

fn main() {
    Hello::run(Settings::default());
}
