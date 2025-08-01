defmodule HighScore do
  @initial_score 0
  
  def new(), do: %{}

  def add_player(scores, name, score \\ @initial_score), do: Map.put_new(scores, name, score)

  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name), do: Map.merge(scores, %{name => @initial_score})

  #def update_score(scores, name, score), do: Map.merge(scores, %{name => score}, fn _k, v1, v2 -> v1 + v2 end)
  def update_score(scores, name, score), do: Map.update(scores, name, score , &(&1 + score))

  def get_players(scores), do: Map.keys(scores)
end
