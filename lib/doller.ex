defmodule Dollar do
  defstruct dollar: 0, amount: 0

  def times(%Dollar{dollar: d}, multiplier) do
    %Dollar{amount: d * multiplier}
  end
end
