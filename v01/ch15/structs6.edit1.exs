defmodule Employee do
  defstruct [ :first_name, :give_name ]
end

defmodule Script do
  def main do
    emp = %Employee{ first_name: "太郎", give_name: "山田" }
    IO.inspect emp
  end
end

Script.main
