defmodule Counter0 do
  def listen(val) do
    IO.puts "** val = #{val}"

    receive do
      :up -> listen(val + 1)
    end
  end
end
