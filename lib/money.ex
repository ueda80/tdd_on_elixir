defmodule Money do
  def equals(money1, money2) do
    money1.amount == money2.amount &&
      money1.__struct__ == money2.__struct__
  end
end
