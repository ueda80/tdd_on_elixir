defmodule MoneyTest do
  use ExUnit.Case
  require Dollar

  test "testMultiplication()" do
    five = %Dollar{dollar: 5}
    amount = Dollar.times(five, 2)

    assert amount.amount == 10
  end
end
