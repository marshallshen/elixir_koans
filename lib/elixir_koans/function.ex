defmodule ElixirKoans.Function do
  import Elixir.IO

  def sum(x, y) when is_integer(x) and is_integer(y) do
    puts "calling sum function for integer"
    x + y
  end

  def sum(x, y) when is_list(x) and is_list(y) do
    puts "calling sum function for list"
    x ++ y
  end
end