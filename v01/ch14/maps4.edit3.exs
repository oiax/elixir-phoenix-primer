ages = %{"Alice" => 23, "Bob" => 15, "Charlie" => 48}
ages = Map.merge(ages, %{"Bob" => 16, "David" => 30})
IO.inspect ages
