defmodule Dollar do
  defstruct amount: 0

  def times(dollar, multiplier) do
    %Dollar{amount: dollar.amount * multiplier}
  end

  def equals(dollar1, dollar2) do
    dollar1.amount == dollar2.amount
  end
end
