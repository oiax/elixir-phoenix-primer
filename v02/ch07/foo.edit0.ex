defmodule Foo do
  defmacro prepare do
    quote do
      import Enum
    end
  end
end
