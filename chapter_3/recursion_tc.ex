# Solution with tail call

defmodule RecursionTC do
  def list_len(list), do: _list_len(list, 0)
  defp _list_len([], len), do: len
  defp _list_len([_ | tail], len), do: _list_len(tail, len + 1)

  def range(min, max), do: _range([], min, max)
  defp _range(res, min, max) when min > max, do: res
  defp _range(res, min, max), do: _range([max|res], min, max - 1)

  def positive(list), do: _positive(list, [])
  defp _positive([], result), do: Enum.reverse(result)
  defp _positive([head|tail], result) when head <= 0, do: _positive(tail, result)
  defp _positive([head|tail], result), do: _positive(tail, [head|result])
end
