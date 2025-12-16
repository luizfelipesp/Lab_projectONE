defmodule ProjectONE.Area do
  def triangulo(base, altura) when is_number(base) and is_number(altura) do
    {:ok, "O valor da base é #{base} e a altura é #{altura}, #{base * altura / 2}"}
  end

  def retangulo(lado, lado1) when is_number(lado) and is_number(lado1) do
    {:ok,
     "A altura do retangulo #{lado} vezes a largura #{lado1}, da o total da area #{lado * lado1}"}
  end
end
