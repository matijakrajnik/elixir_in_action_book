defmodule Streams do
  def lines_length!(file_path) do
    file_path
    |> trimed_lines()
    |> Enum.map(&String.length/1)
  end

  def longest_line_length!(file_path) do
    file_path
    |> trimed_lines()
    |> Stream.map(&String.length/1)
    |> Enum.max()
  end

  def longest_line!(file_path) do
    file_path
    |> trimed_lines()
    |> Enum.max_by(&String.length/1)
  end

  def words_per_line!(file_path) do
    file_path
    |> trimed_lines()
    |> Enum.map(fn x -> String.split(x) |> length end)
  end

  defp trimed_lines(file_path) do
    file_path
    |> File.stream!()
    |> Stream.map(&String.trim_trailing/1)
  end
end
