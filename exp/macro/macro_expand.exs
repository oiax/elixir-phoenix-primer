ast = quote do
  if true do
    100
  end
end

ast |> Macro.expand(__ENV__) |> Macro.to_string |> IO.puts

ast = quote do
  x = true
  if x do
    100
  end
end

ast |> Macro.expand(__ENV__) |> Macro.to_string |> IO.puts
