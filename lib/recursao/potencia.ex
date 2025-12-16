defmodule ProjectONE.Recursao.Potencia do
  def lista([]), do: []
  def lista([h | t]), do: [h * h] ++ lista(t)
  def lista(_), do: {:error, "Passe uma Lista"}
end
