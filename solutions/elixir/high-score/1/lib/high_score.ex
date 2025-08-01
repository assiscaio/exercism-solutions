defmodule HighScore do
  @initial_score 0
  
  def new(), do: %{}

  def add_player(scores, name, score \\ 0), do: Map.put_new(scores, name, score)

  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name), do: Map.merge(scores, %{name => @initial_score})

  def update_score(scores, name, score), do: Map.merge(scores, %{name => score}, fn _k, v1, v2 -> v1 + v2 end)

  def get_players(scores), do: Map.keys(scores)
end
