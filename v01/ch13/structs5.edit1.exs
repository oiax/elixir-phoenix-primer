book1 = %Book{ author: "夏目漱石", title: "坊っちゃん" }
for { key, value} <- book1 do
  IO.puts "#{key} = #{value}"
end
