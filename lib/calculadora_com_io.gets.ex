defmodule ProjectONE.IOgets.Calculadora do
  alias ProjectONE.Math

  def your_calculation do
    IO.gets("what would you like to calculate?\n")
    |> String.trim()
    |> decode()
  end

  defp decode(result) do
    calculation = Regex.split(~r{}, result) -- ["", ""]

    [number, operator, number_1] = calculation

    num = String.to_integer(number)
    num1 = String.to_integer(number_1)

    case operator do
      "+" ->
        Math.somar(num, num1)
        your_calculation()

      "-" ->
        Math.subtrair(num, num1)
        your_calculation()

      "x" ->
        Math.multiplicar(num, num1)
        your_calculation()

      "/" ->
        Math.dividir(num, num1, [:trunc])
        your_calculation()

      _ ->
        {:error, "only: somar, subtrair, multiplicar and dividir"}
        your_calculation()
    end
  end
end

# TO DO: Use regex to catch the operator

alias ProjectONE.IOgets.Calculadora

Calculadora.your_calculation()
