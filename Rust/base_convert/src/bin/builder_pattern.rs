struct User {
    id: String,
    email: String,
    first_name: Option<String>,
    last_name: Option<String>,
}

impl User {
    fn new(
        id: String,
        email: String,
        first_name: Option<String>,
        last_name: Option<String>,
    ) -> Self {
        Self {
            id,
            email,
            first_name,
            last_name,
        }
    }
    fn builder(id: String, email: String) -> UserBuilder {
        UserBuilder::new(id, email)
    }
}

struct UserBuilder {
    id: String,
    email: String,
    first_name: Option<String>,
    last_name: Option<String>,
}
#[test]
fn test_user_new() {
    let u = User::new(
        "fdsafd".to_string(),
        "vifdsa@fdsa.com".to_string(),
        Some("afdsa".to_string()),
        None,
    );
}

impl UserBuilder {
    fn new(id: String, email: String) -> Self {
        Self {
            id: id,
            email: email,
            first_name: None,
            last_name: None,
        }
    }

    fn first_name(mut self, first_name: impl Into<String>) -> Self {
        self.first_name = Some(first_name.into());
        self
    }
    fn last_name(mut self, last_name: impl Into<String>) -> Self {
        self.last_name = Some(last_name.into());
        self
    }
    fn build(self) -> User {
        let Self {
            id,
            email,
            first_name,
            last_name,
        } = self;
        User {
            id,
            email,
            first_name,
            last_name,
        }
    }
}

#[test]
fn test_builder() {
    let u = User::builder("dfsafdsa".to_string(), "fdsafdsa".to_string())
        .first_name("fdsaa")
        .build();
}
