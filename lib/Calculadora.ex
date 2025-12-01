defmodule ProjectONE.Calculadora do
  def somar(numero, numero_1) when is_number(numero) and is_number(numero_1),
    do: "#{numero} + #{numero_1} = #{numero + numero_1}"

  def subtrair(numero, numero_1) when is_number(numero) and is_number(numero_1),
    do: "#{numero} - #{numero_1} = #{numero - numero_1}"

  def multiplicar(numero, numero_1) when is_number(numero) and is_number(numero_1),
    do: "#{numero} x #{numero_1} = #{numero * numero_1}"

  def dividir(numero, numero_1) when is_number(numero) and is_number(numero_1),
    do: "#{numero} / #{numero_1} = #{numero / numero_1}"
end
