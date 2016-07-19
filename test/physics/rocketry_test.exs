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
