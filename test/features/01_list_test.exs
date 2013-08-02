defmodule ListTest do
  use ElixirKoans.TestCase

  test "list can contactenate, delete, flatten.. all that jazz" do
    assert List.concat([1, 2, 3], [4, 5, 6]) == [1, 2, 3, 4, 5, 6]
    assert List.concat([[1, [2], 3], [4], [5, 6]]) == [1,[2],3,4,5,6]
    assert List.delete([1, 2, 3], 1) == [2, 3]
    assert List.flatten([1, [[2], 3]]) == [1, 2, 3]
  end

  test "pass in a function to fold the list, from the left" do
    # doc: foldl(list, acc, function)
    #the given list to the left with a function. Requires an accumulator.
    assert List.foldl([5, 1], 10, fn(x, acc)-> x + acc end) == 16
  end

  test "pass in a function to fold the list, from the left" do
    # doc: foldr(list, acc, function)
    # reduces the given list to the right with a function. Requires an accumulator.
    assert List.foldr([1, 2, 3, 4], 0, fn(x, acc)-> x - acc end) == -2
  end

end