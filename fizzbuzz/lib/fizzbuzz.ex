defmodule Fizzbuzz do
  def build(filename) do
    filename
    |> File.read()
    |> handle_file_read()
  end

  def handle_file_read({:ok, result}) do
    result
    |> String.split(",")
    |> Enum.map(&convert_and_evaluate/1)
  end

  def handle_file_read({:error, reason}), do: "Error reading the file: #{reason}"

  def convert_and_evaluate(elem) do
    elem
    |> String.to_integer()
    |> evaluate_numbers()
  end

  def evaluate_numbers(number) when rem(number, 3) == 0 and rem(number, 5) == 0, do: :fizzbuzz
  def evaluate_numbers(number) when rem(number, 3) == 0, do: :fizz
  def evaluate_numbers(number) when rem(number, 5) == 0, do: :buzz
  def evaluate_numbers(number), do: number
end
