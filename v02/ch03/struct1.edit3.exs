u = %User{name: "foo", email: "foo@example.com"}
u = %User{u | name: "bar", email: "foo@example.com"}
IO.inspect u.name
IO.inspect u.email
