defmodule ProjectONE.Recursao.Acumulador do
  def sum(list) do
    do_sum(list, 0)
  end

  defp do_sum([], acc), do: acc
  defp do_sum([h | t], acc), do: do_sum(t, h + acc)
end

alias ProjectONE.Recursao.Acumulador

Acumulador.sum([1, 2, 3, 4, 5])
|> IO.puts()
