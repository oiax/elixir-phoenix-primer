m = %{name: "foo", email: "foo@example.com"}
m = %{m | email: "foo@example.com"}
u = %User{name: "foo", email: "foo@example.com"}
u = %User{u | email: "foo@example.com"}
IO.inspect m
IO.inspect u
