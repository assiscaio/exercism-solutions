defmodule Username do
  def sanitize([]), do: []
  def sanitize(username) do
    [v1 | v2] = username
    case v1 do
      ?ä -> [?a, ?e] ++ sanitize(v2)
      ?ö -> [?o, ?e] ++ sanitize(v2)
      ?ü -> [?u, ?e] ++ sanitize(v2)
      ?ß -> [?s, ?s] ++ sanitize(v2)
      ?_ -> [v1] ++ sanitize(v2)
      v1 when v1 >= ?a and v1 <= ?z -> [v1] ++ sanitize(v2)
      _ -> [] ++ sanitize(v2)
    end
  end
end
