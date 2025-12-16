defmodule ProjectONE.Recursao.AcumuladorTest do
  use ExUnit.Case
  alias ProjectONE.Recursao

  @erro {:error, "Passe uma lista e um acumulador"}

  test "dado uma lista e um acumulador, retorna o total do acumulador" do
    assert Recursao.Acumulador.soma([], 0) == 0
    assert Recursao.Acumulador.soma([1, 2, 3], 0) == 6
  end

  test "elementos diferentes dentro da lista" do
    assert Recursao.Acumulador.soma([1, "a", 2]) == @erro
    assert Recursao.Acumulador.soma([:a, :atomo, []]) == @erro
    assert Recursao.Acumulador.soma([%{}, {}, []]) == @erro
    assert Recursao.Acumulador.soma(["world", {1, 2}, 'a']) == @erro
  end

  describe "Testando outros tipos" do
    test "atomo" do
      assert Recursao.Acumulador.soma(:atomo) == @erro
    end

    test "Inteiro" do
      assert Recursao.Acumulador.soma(10) == @erro
    end

    test "String" do
      assert Recursao.Acumulador.soma("Hello") == @erro
    end

    test "Float" do
      assert Recursao.Acumulador.soma(1.0) == @erro
    end

    test "testando charlist" do
      assert Recursao.Acumulador.soma('c') == @erro
    end
  end
end
