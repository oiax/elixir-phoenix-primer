defmodule Mod1 do
  defmacro prepare do
    {:import, [context: Elixir], [{:__aliases__, [alias: false], [:Enum]}]}
  end
end
