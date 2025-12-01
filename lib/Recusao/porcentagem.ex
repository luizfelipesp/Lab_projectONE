defmodule ProjectONE.Recursao.Matematica do
  require Logger

  def porcentagem(porcen) when is_number(porcen) do
    Logger.warn("#{porcen} porcento de ???? qual numero?")
  end

  def porcentagem(porcen, numero) when is_number(porcen) and is_number(numero) do
    {:ok, "#{porcen} porcento de #{numero} é igual á #{porcen * numero / 100}!"}
  end

  def porcentagem(_qualquercoisa), do: Logger.error("Apenas numeros.")
end
