ages = %{"Alice" => 23, "Bob" => 15, "Charlie" => 48}
ages = %{ages | "Bob" => 16, "Charlie" => 49}
IO.inspect ages
