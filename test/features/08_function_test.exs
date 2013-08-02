defmodule FunctionTest do
  use ElixirKoans.TestCase

  test "sum of two integers should be an integer" do
    assert ElixirKoans.Function.sum(1, 2) == 3
  end

  test "sum of two lists should be one list" do
    assert ElixirKoans.Function.sum([1], [2]) == [1, 2]
  end

  test "sum of multiple integers should reuse the old function" do
    assert ElixirKoans.Function.sum(1, 2, 3, 4, 5) == 15
  end
end