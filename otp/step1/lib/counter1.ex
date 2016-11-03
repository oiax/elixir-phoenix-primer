defmodule Counter1 do
  def listen(val) do
    receive do
      :up -> listen(val + 1)
      :show ->
        IO.puts "** val = #{val}"
        listen(val)
    end
  end
end
