defmodule M do
  def read do
    File.read!("input_data1.txt")
  end

  def input_to_list(input) do
    input
    |> String.split("\n")
    |> Enum.map(fn signed_integer_string ->
      case Integer.parse(signed_integer_string) do
        {signed_integer, _} -> signed_integer
        _error -> nil
      end
    end)
    |> Enum.reject(&is_nil/1)
  end

  def calculate([hd | tl], acc) do
    calculate(tl, hd + acc)
  end

  # # finish
  def calculate([], acc), do: acc
end

M.read()
|> M.input_to_list()
|> M.calculate(0)
|> IO.inspect()
