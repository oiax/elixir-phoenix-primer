ages = %{"Alice" => 23, "Bob" => 15, "Charlie" => 48}
ages = Map.delete(ages, "Bob")
IO.inspect ages
