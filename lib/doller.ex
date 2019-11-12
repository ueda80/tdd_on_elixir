defmodule Dollar do
  require Money

  defstruct amount: 0

  def times(dollar, multiplier) do
    %Dollar{amount: dollar.amount * multiplier}
  end

  defdelegate equals(dollar1, dollar2), to: Money, as: :equals
end
