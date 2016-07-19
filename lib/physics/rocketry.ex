defmodule Physics.Rocketry do
  alias Physics.Laws

  def escape_velocity(:earth) do
    Planet.earth |> escape_velocity
  end

  #Float.ceil((:math.sqrt(2 * 6.67e-11 * mass / radius) / 1000), 2)
  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> Calculate.to_kilometer
      |> Calculate.to_nearest_tenth
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    :math.sqrt 2 * Laws.gravitational_constant * mass / radius
  end

end
