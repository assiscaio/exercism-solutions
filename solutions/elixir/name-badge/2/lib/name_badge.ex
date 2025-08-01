defmodule NameBadge do
  def print(id, name, department) do
    id_string = if id == nil, do: "", else: "[#{id}] - "
    dep_string = if department == nil, do: " - OWNER", else: " - #{String.upcase(department)}"
    "#{id_string}#{name}#{dep_string}"
  end
end