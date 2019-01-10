extern crate azul;

use azul::{prelude::*, widgets::{label::Label, button::Button}};

struct DataModel {
    counter: usize,
}

impl Layout for DataModel {
    // Model renders View
    fn layout(&self, _info: WindowInfo<Self>) -> Dom<Self> {
        let label = Label::new(format!("{}", self.counter)).dom();
        let button = Button::with_label("Update counter").dom()
            .with_callback(On::MouseUp, Callback(update_counter));

        Dom::new(NodeType::Div)
            .with_child(label)
            .with_child(button)
    }
}

// View updates Model
fn update_counter(app_state: &mut AppState<DataModel>, _event: WindowEvent<DataModel>) -> UpdateScreen {
    app_state.data.modify(|state| state.counter += 1);
    UpdateScreen::Redraw
}

fn main() {
    let app = App::new(DataModel { counter: 0 }, AppConfig::default());
    app.run(Window::new(WindowCreateOptions::default(), css::native()).unwrap()).unwrap();
}