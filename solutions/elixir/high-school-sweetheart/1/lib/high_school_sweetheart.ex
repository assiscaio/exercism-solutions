defmodule HighSchoolSweetheart do
  def first_letter(name), do: name |> String.trim |> String.at(0)

  def initial(name), do: name |> String.at(0) |> String.upcase |> Kernel.<> "."

  def initials(full_name) do
    list_name = String.split(full_name)
    initial(List.first list_name) <> " " <> initial(List.last list_name)
  end

  def pair(full_name1, full_name2) do
  """
       ******       ******
     **      **   **      **
   **         ** **         **
  **            *            **
  **                         **
  **     #{initials(full_name1)}  +  #{initials(full_name2)}     **
   **                       **
     **                   **
       **               **
         **           **
           **       **
             **   **
               ***
                *
  """

    # Please implement the pair/2 function
  end
end
