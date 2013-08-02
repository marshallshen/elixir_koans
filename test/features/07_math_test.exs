defmodule MathTest do
  use ElixirKoans.TestCase

  test "square root approximation using Netwon methods" do
    assert ElixirKoans.Math.newton_sqrt(10, 1, 0.001) >= 3.16
    assert ElixirKoans.Math.newton_sqrt(10, 1, 0.001) <= 3.17
  end

  test "rewrite of square root approximation should also work" do
    assert ElixirKoans.Math.newton_sqrt_alt(10, 1, 0.001) >= 3.16
    assert ElixirKoans.Math.newton_sqrt_alt(10, 1, 0.001) <= 3.17
  end
end

