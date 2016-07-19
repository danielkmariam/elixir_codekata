defmodule PhysicsRocketryTest do
  use ExUnit.Case, async: true
  alias Physics.Rocketry

  test "escape velocity of earth in kilometers" do
    assert Rocketry.escape_velocity(:earth) == 11.19
  end

  test "escape velocity of a planet in kilometers" do
    assert Rocketry.escape_velocity(Planet.earth) == 11.19
  end

  test "escape velocity of mars in kilometers" do
    assert Rocketry.escape_velocity(Planet.mars) == 5.01
  end

  test "escape velocity of moon in kilometers" do
    assert Rocketry.escape_velocity(Planet.moon) == 2.38
  end

  test "orbital speed for earth" do
    assert Rocketry.orbital_speed(Planet.earth, 100) == 7845.8
  end

  test "orbital acceleration of a planet around earth" do
    assert Rocketry.orbital_acceleration(Planet.earth, 100) == 9.52
  end

  test "orbital acceleration of a planet around mars" do
    assert Rocketry.orbital_acceleration(Planet.mars, 100) == 3.48
  end
end
