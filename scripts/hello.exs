defmodule Hello do
  def greet(name) do
    IO.puts("Hello #{name}")
  end
end

Hello.greet("Daniel")
Hello.greet("Elixir")
