defmodule ProjectONE.Math do
  def somar(num, num_1), do: num + num_1

  def subtrair(num, num_1), do: num - num_1

  def multiplicar(num, num_1), do: num * num_1

  def dividir(dividendo, divisor, opts \\ []) do
    if :trunc in opts do
      trunc(dividendo / divisor)
    else
      dividendo / divisor
    end
  end

  def porcentagem(num, porcen) do
    dividir(porcen, 100)
    |> multiplicar(num)
    |> trunc()
  end
end

alias ProjectONE.Math

Math.porcentagem(100, 20)
|> IO.puts()
