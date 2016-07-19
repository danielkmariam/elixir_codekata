defmodule PhysicsRocketryTest do
  use ExUnit.Case, async: true
  alias Physics.Rocketry

  test "escape velocity of earth in kilometers" do
    assert Rocketry.escape_velocity(:earth) == 11.2
  end

  test "escape velocity of a planet in kilometers" do
    assert Rocketry.escape_velocity(Planet.earth) == 11.2
  end

end

defmodule PhysicsLawsTest do
  use ExUnit.Case, async: true
  alias Physics.Laws

  test "gravitational constant" do
    assert Laws.gravitational_constant == 6.67e-11
  end

end

defmodule PhysicsPlanetTest do
  use ExUnit.Case, async: true

  test "planet earth returns a map" do
    assert Planet.earth |> is_map  == true
  end

  test "earth mass is 5.972e24" do
    assert Planet.earth.mass  == 5.972e24
  end

  test "earth radius is 6.371e6" do
    assert Planet.earth.radius  == 6.371e6
  end

end
