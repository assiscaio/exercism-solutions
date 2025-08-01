defmodule NameBadge do
  def print(id, name, department) do
    idString = if id == nil, do: "", else: "[#{id}] - "
    depString = if department == nil, do: " - OWNER", else: " - #{String.upcase(department)}"
    "#{idString}#{name}#{depString}"
  end
end