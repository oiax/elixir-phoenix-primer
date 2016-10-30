defmodule Employee do
  defstruct [ :first_name, :give_name ]
end

emp = %Employee{ first_name: "太郎", give_name: "山田" }
IO.inspect emp
