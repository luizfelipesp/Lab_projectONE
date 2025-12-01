defmodule ProjectONE.For.Potencia do
  def lista(list) do
    for x <- list, do: x * x
  end
end
