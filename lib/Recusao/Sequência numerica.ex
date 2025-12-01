defmodule ProjectONE.Recursao.SequeciaNumerica do
  def p(0), do: 0

  def p(number) do
    IO.puts(number)
    p(number - 1)
  end
end
