defmodule User do
  @enforce_keys [:email]
  defstruct [{:name, "No name"}, :email]
end
