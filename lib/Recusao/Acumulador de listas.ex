defmodule ProjectONE.Recursao.Acumulador do
  def soma([head | tail], acumulador) do
    soma(tail, head + acumulador)
  end

  def soma(_tail, acumulador), do: acumulador

  def  soma(_), do: {:error, "Passe uma lista e um acumulador"}
end
