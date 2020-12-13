use iced::{executor, Application, Command, Element, Settings, Text};

pub fn main() {
    Hello::run(Settings::default())
}

struct Hello;

impl Application for Hello {
    type Executor = executor::Null;
    type Message = ();
    type Flags = ();

    fn new(_flags: ()) -> (Hello, Command<Self::Message>) {
        (Hello, Command::none())
    }

    fn title(&self) -> String {
        String::from("A cool application")
    }
    fn update(&mut self, message: Self::Message) -> Command<Self::Message> {
        Command::none()
    }
    fn view(&mut self) -> Element<'_, Self::Message> {
        Text::new("Hello, World!").into()
    }
}
