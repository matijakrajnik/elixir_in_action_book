# Solution without tail call

defmodule Recursion do
  def list_len([]), do: 0
  def list_len([_ | tail]), do: 1  + list_len(tail)

  def range(min, max) when min > max, do: []
  def range(min, max), do: [min | range(min + 1, max)]

  def positive([]), do: []
  def positive([head|tail]) when head <= 0, do: positive(tail)
  def positive([head|tail]), do: [head|positive(tail)]
end
