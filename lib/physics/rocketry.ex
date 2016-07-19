defmodule Physics.Rocketry do
  alias Physics.Laws

  def escape_velocity(:earth) do
    Planet.earth |> escape_velocity
  end

  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> Calculate.to_kilometer
      |> Calculate.to_nearest_tenth
  end

  def orbital_acceleration(planet, height) when is_map(planet) do
    (orbital_speed(planet, height) |> Calculate.squared) / orbital_radius(planet, height)
      |> Calculate.to_nearest_tenth
  end

  def orbital_speed(planet, height) when is_map(planet) do
    Laws.gravitational_constant * planet.mass / orbital_radius(planet, height)
      |> Calculate.square_root
      |> Calculate.to_nearest_tenth
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    2 * Laws.gravitational_constant * mass / radius
      |> Calculate.square_root
  end

  defp orbital_radius(%{radius: radius}, height) do
    radius + (height |> Calculate.to_meter)
  end

end
