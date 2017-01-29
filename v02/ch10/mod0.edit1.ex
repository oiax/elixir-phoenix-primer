defmodule Mod0 do
  defmacro prepare do
    quote do
      import Enum, only: [map: 2]
    end
  end
end
