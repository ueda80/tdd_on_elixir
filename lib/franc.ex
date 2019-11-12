defmodule Franc do
  require Money

  defstruct amount: 0

  def times(franc, multiplier) do
    %Franc{amount: franc.amount * multiplier}
  end

  defdelegate equals(franc1, franc2), to: Money, as: :equals
end
