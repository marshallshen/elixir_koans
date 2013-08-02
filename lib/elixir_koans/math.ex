defmodule ElixirKoans.Math do
  def square(x) do
    x * x
  end

  def average(x, y) do
    (x + y) / 2
  end

  def good_enough?(x, guess, tol) do
    abs(square(guess) - x) <= tol
  end

  def newton_next_guess(x, guess) do
    average(guess, (x / guess))
  end

  def newton_sqrt(x, guess, tol) do
    if good_enough?(x, guess, tol) do
      guess
    else
      guess = newton_next_guess(x, guess)
      newton_sqrt(x, guess, tol)
    end
  end

  def newton_sqrt_alt(x, guess, tol) do
    #if good_enough?(x, guess, tol) do
    precision = fn(x, guess, tol) ->
      cond do
        abs(square(guess) - x ) <= tol ->
          :good_enough
        abs(square(guess) - x ) > tol ->
          :not_good_enough
      end
    end

    if precision.(x, guess, tol) == :good_enough do
      guess
    else
      guess = newton_next_guess(x, guess)
      newton_sqrt(x, guess, tol)
    end
  end
end