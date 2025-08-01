defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair,1)
  end

  def to_milliliter({:cup, v}), do: {:milliliter, v * 240.0}
  def to_milliliter({:milliliter, v}), do: {:milliliter, v}
  def to_milliliter({:fluid_ounce, v}), do: {:milliliter, v * 30}
  def to_milliliter({:teaspoon, v}), do: {:milliliter, v * 5}
  def to_milliliter({:tablespoon, v}), do: {:milliliter, v * 15}

  def from_milliliter({:milliliter, volume}, :cup), do: {:cup, volume / 240}
  def from_milliliter({:milliliter, volume}, :milliliter), do: {:milliliter, volume}
  def from_milliliter({:milliliter, volume}, :fluid_ounce), do: {:fluid_ounce, volume / 30}
  def from_milliliter({:milliliter, volume}, :teaspoon), do: {:teaspoon, volume / 5}
  def from_milliliter({:milliliter, volume}, :tablespoon), do: {:tablespoon, volume / 15}

#  def convert({:milliliter, volume} = t, :milliliter), do: {to_milliliter(t)}
  def convert({unit, volume} = t, :milliliter), do: {to_milliliter(t)}
  def convert({:milliliter, volume} = t, unit), do:  {from_milliliter(t, unit)}
  def convert({unitFrom, volume} = t, unitTo) do
    to_milliliter(t)
      |> from_milliliter(unitTo)
  end
  
end
