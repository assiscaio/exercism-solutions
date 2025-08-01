defmodule FreelancerRates do
  def daily_rate(hourly_rate), do: hourly_rate * 8.0
  def apply_discount(before_discount, discount), do: before_discount * (1.0 - discount / 100)

  def monthly_rate(hourly_rate, discount) do
    daily_rate(hourly_rate) * 22
    |> apply_discount(discount)
    |> ceil()
  end

  def days_in_budget(budget, hourly_rate, discount) do
    valor = daily_rate(hourly_rate)
      |> apply_discount(discount)
      |> trunc()
    Float.floor(budget / valor, 1)
  end
end
