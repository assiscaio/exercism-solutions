defmodule Secrets do
  @spec secret_add(any) :: (number -> number)
  def secret_add(secret), do: fn value -> value + secret end
  def secret_subtract(secret), do: fn value -> value - secret end
  def secret_multiply(secret), do: fn value -> value * secret end
  def secret_divide(secret), do: fn value -> div(value, secret) end
  def secret_and(secret), do: fn value -> Bitwise.band(value, secret) end
  def secret_xor(secret), do: fn value -> Bitwise.bxor(secret, value) end
  def secret_combine(secret_function1, secret_function2) do
    fn value ->
      secret_function1.(value)
      |> secret_function2.()
    end
  end
end
