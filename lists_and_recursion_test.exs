  Code.load_file("lists_and_recursion.ex", __DIR__)

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule ListAndRecursionTest do
  use ExUnit.Case

  test 'sum of squares' do
    assert ListsAndRecursion.mapsum([1,2,3], &(&1 * &1)) == 14
  end

  test 'get max value in a list - 3' do
    assert ListsAndRecursion.max([1,2,3]) == 3
    assert ListsAndRecursion.max([1,3,2]) == 3
  end

  test 'caesar - ryvkve' do
    assert ListsAndRecursion.caesar('ryvkve', 13)  == 'elixir'
  end

  @tag :pending
  test 'other name' do
    assert false == true
  end
end
