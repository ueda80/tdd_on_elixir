defmodule Franc do
  defstruct amount: 0

  def times(franc, multiplier) do
    %Franc{amount: franc.amount * multiplier}
  end

  def equals(franc1, franc2) do
    franc1.amount == franc2.amount
  end
end
