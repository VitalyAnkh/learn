use iced::{
    executor, Align, Application, Checkbox, Column, Command, Container, Element, Length, Settings,
    Subscription, Text,
};

pub fn main() {}

#[derive(Debug, Default)]
struct Events {
    last: Vec<iced_native::Event>,
    enabled: bool,
}

#[derive(Debug, Default)]
enum Message {
    EventOccurred(iced_native::Event),
    Toggled(bool),
}
impl Application for Events {
    type Executor = executor::Default;
    type Message = Message;
    type Flags = ();
    fn new(_flags: ()) -> (Events, Command<Message>) {
        (Events::default(), Command::none())
    }

    fn title(&self) -> String {
        String::from("Events - VitalyR")
    }

    fn update(&mut self, message: Message) -> Command<Message> {
        match Message {
            Message::EventOccurred(event) => {
                self.last.push(event);

                if self.last.len() > 5 {
                    let _ = self.last.remove(0);
                }
            }
            Message::Toggled(enabled) => {
                self.enabled = enabled;
            }
        }
        Command::none()
    }
    fn subscription(&self) -> Subscription<Self::Message> {
        if self.enabled {
            iced_native::subscription::events().map(Message::EventOccurred)
        } else {
            Subscription::none()
        }
    }
    fn view(&mut self) -> Element<'_, Self::Message> {}
}
