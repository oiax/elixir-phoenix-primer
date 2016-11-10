member1 = %{ :name => "Alice", :age => 23 }
IO.inspect member1
member2 = %{ name: "Alice", age: 23 }
IO.inspect member2
IO.inspect member1 == member2
