defmodule MoneyTest do
  use ExUnit.Case

  test "testMultiplication()" do
    five = %Dollar{amount: 5}
    assert %Dollar{amount: 10} == Dollar.times(five, 2)
    assert %Dollar{amount: 15} == Dollar.times(five, 3)
  end

  test "testEquality()" do
    assert Dollar.equals(%Dollar{amount: 5}, %Dollar{amount: 5}) == true
    refute Dollar.equals(%Dollar{amount: 5}, %Dollar{amount: 6}) == true
    assert Franc.equals(%Franc{amount: 5}, %Franc{amount: 5}) == true
    refute Franc.equals(%Franc{amount: 5}, %Franc{amount: 6}) == true
    refute Franc.equals(%Franc{amount: 5}, %Dollar{amount: 5}) == true
  end

  test "testFrancMultiplication()" do
    five = %Franc{amount: 5}
    assert %Franc{amount: 10} == Franc.times(five, 2)
    assert %Franc{amount: 15} == Franc.times(five, 3)
  end
end
