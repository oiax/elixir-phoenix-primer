book1 = %Book{ author: "夏目漱石", title: "坊っちゃん" }
map = %{ title: "吾輩は猫である" }
book1 = Map.merge(book1, map)
IO.inspect book1
