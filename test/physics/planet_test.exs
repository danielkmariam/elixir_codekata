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
