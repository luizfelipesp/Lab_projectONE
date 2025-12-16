defmodule ExemploCodigos.Test do
  use ExUnit.Case

  test "soma e multiplicaçãoo com numeros aleatorios" do
    assert SomarEmultiplicar.chamar("somar", 1, 1) == 2
  end
end
