book1 = %Book{ author: "夏目漱石", title: "坊っちゃん" }
Enum.each book1, fn({ key, value }) ->
  IO.puts "#{key} = #{value}"
end
