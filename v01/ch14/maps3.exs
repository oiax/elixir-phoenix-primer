team = %{
  leader: %{name: "Charlie", age: 48},
  subleader: %{name: "Alice", age: 23}
}
IO.inspect team[:leader][:age]
