defmodule M do
  def read do
    File.read!("input_data2.txt")
  end

  def input_to_list(input) do
    lists =
      input
      |> String.split("\n\n")
      |> Enum.map(fn list ->
        list
        |> String.split([", ", ",", " ", "\n", "[", "]"])
        |> Enum.reject(&(&1 == ""))
        |> Enum.map(&String.to_integer/1)
      end)

    max_length =
      lists
      |> Enum.map(&length/1)
      |> Enum.max()

    lists
    |> Enum.map(fn list -> list ++ List.duplicate(0, max_length - length(list)) end)
  end

  def calculate(lists) do
    lists
    |> Enum.zip_with(fn [x, y, z] ->
      [x, y, z]
      |> Enum.filter(&(rem(&1, 2) == 0))
      |> Enum.max(fn -> 0 end)
    end)
    |> Enum.sum()
  end
end

M.read()
|> M.input_to_list()
|> M.calculate()
|> IO.inspect()
