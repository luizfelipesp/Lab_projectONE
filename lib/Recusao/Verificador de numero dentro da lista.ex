defmodule ProjectONE.Recursao.Verificador do
  defp contains?([number | _list], number) do
    IO.puts("#{number} is in the list")
  end

  defp contains?([_number | list], n) do
    contains?(list, n)
  end

  defp contains?([], number) do
    IO.puts("#{number} is NOT in the list")
  end

  def is_in_the_list?(list, n) do
    contains?(list, n)
  end
end
