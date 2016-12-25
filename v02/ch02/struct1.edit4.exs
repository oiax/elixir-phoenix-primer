u = %User{name: "foo", email: "foo@example.com"}
u = Map.merge(u, %{name: "bar", email: "bar@example.com"})
IO.inspect u.name
IO.inspect u.email
