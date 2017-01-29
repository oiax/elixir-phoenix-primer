require Mod0
Mod0.__using__(nil)

[1, 2, 3] |> map(&(&1 * 10)) |> IO.inspect
