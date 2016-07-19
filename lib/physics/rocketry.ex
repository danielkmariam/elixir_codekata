defmodule Convert do

  def to_nearest_tenth(velocity) do
    Float.ceil(velocity, 1)
  end

  def to_kilometer(value) do
    value / 1000
  end

end

defmodule Planet do

  def earth() do
    %{mass: 5.972e24, radius: 6.371e6}
  end

end

defmodule Physics.Laws do

  def gravitational_constant() do
    6.67e-11
  end

end

defmodule Physics.Rocketry do
  alias Physics.Laws

  def escape_velocity(:earth) do
    Planet.earth |> escape_velocity
  end

  #Float.ceil((:math.sqrt(2 * 6.67e-11 * mass / radius) / 1000), 2)
  def escape_velocity(planet) when is_map(planet) do
    planet
      |> calculate_escape
      |> Convert.to_kilometer
      |> Convert.to_nearest_tenth
  end

  defp calculate_escape(%{mass: mass, radius: radius}) do
    :math.sqrt 2 * Laws.gravitational_constant * mass / radius
  end

end
