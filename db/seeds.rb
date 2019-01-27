john = User.create(email: "john.doe@example.com", first_name: "John", last_name: "Doe")
john.added_items.create(title: "first")
john.added_items.create(title: "second")

jane = User.create(email: "jane.doe@example.com", first_name: "Jane", last_name: "Doe")
jane.added_items.create(title: "third")
jane.added_items.create(title: "forth")