defmodule Book do
  @enforce_keys [ :title ]
  defstruct [ { :author, "不明" }, :title ]
end
