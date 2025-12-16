defmodule Fibonacci.Test do
  use ExUnit.Case

  test "a" do
    assert Fibonacci.fib(10) == 55
  end

  test "b" do
    assert Fibonacci.fib("a") == false
  end

  test "c" do
    assert Fibonacci.fib(true) == false
  end
end
