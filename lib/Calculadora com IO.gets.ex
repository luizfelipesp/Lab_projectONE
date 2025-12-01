defmodule ProjectONE.IOgets.Calculadora do
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
        sum(num, num1)

      "-" ->
        subtract(num, num1)

      "x" ->
        multiply(num, num1)

      "/" ->
        divide(num, num1)

      _ ->
        {:error, "only: sum, subtract, multiply and divide"}
    end
  end

  defp sum(n, n1), do: {:ok, "#{n} + #{n1} = #{n + n1}"}
  defp subtract(n, n1), do: {:ok, "#{n} - #{n1} = #{n - n1}"}
  defp multiply(n, n1), do: {:ok, "#{n} x #{n1} = #{n * n1}"}
  defp divide(n, n1), do: {:ok, "#{n} / #{n1} = #{n / n1}"}
end
