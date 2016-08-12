defmodule ListsAndRecursion do

  @doc """
  Write a mapsum function that takes a list and a function. It applies the function
  to each element of the list and then sums the result, so
  iex> MyList.mapsum [1, 2, 3], &(&1 * &1)
  14
  """
  def mapsum list, func do
    _mapsum(list, func, 0)
  end

  defp _mapsum( [], _, sum), do: sum
  defp _mapsum list, func, sum do
    [head | tail] = list
    _mapsum tail, func, sum + func.(head)
  end

  def max list do
    [head|_tail] = list
    _max list,head
  end

  defp _max([], current_max), do: current_max
  defp _max(list, current_max) do
    [head|tail] = list
    if head > current_max do
      _max tail, head
    else
      _max tail, current_max
    end
  end

  def caesar list, rot do
    _caesar list, rot, ''
  end

  defp _caesar([],_, result), do: result
  defp _caesar list, rot, result do
    [head|tail] = list
    new = head + rot
    append = if new > 122 do
             new - 26
           else
             new
           end
    _caesar tail, rot, result ++ [append]
  end
end
