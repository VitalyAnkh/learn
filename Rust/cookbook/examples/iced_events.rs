use iced::{
    executor, Align, Application, Checkbox, Column, Command, Container, Element, Length, Settings,
    Subscription, Text,
};

pub fn main() -> iced::Result {
    Events::run(Settings::default())
}

#[derive(Debug, Default)]
struct Events {
    last: Vec<iced_native::Event>,
    enabled: bool,
}

#[derive(Debug, Clone)]
enum Message {
    EventOccurred(iced_native::Event),
    Toggled(bool),
}

impl Application for Event {}
