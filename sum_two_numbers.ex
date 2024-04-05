a = IO.gets "Digite um número: " 
b = IO.gets "Digite o segundo número: "

numa = a |> String.trim() |> String.to_integer()
numb = b |> String.trim() |> String.to_integer()

sum = numa + numb

IO.inspect sum
