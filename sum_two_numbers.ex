defmodule Calculator do 
  def sum() do
    numa = get_input_integer("Digite um número: ")
    numb = get_input_integer("Digite o segundo número: ")

    result = numa + numb

    IO.inspect "A soma dos números é #{result}"
  end

  def get_input_integer(text) do
    IO.gets(text) |> String.trim() |> String.to_integer()
  end
end

Calculator.sum()

