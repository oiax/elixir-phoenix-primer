m = %{name: "foo", email: "foo@example.com"}
m = Map.merge(m, %User{email: "bar@example.com"})
u = %User{name: "foo", email: "foo@example.com"}
u = Map.merge(u, %User{email: "bar@example.com"})
IO.inspect m
IO.inspect u
