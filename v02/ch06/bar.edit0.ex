defmodule Bar do
  defmacro __using__(_opts) do
    quote do
      import Enum
    end
  end
end
