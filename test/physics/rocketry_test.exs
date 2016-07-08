defmodule PhysicsRocketryTest do
  use ExUnit.Case
  alias Physics.Rocketry

  test "calculate escape velocity of earth in kilometers" do
    assert Rocketry.escape_velocity(:earth) == 11.2
  end

  test "calculate escape velocity of a planet in kilometers" do
    assert Rocketry.escape_velocity(%{mass: 5.972e24, radius: 6.371e6}) == 11.2
  end

end

defmodule PhysicsLawsTest do
  use ExUnit.Case
  alias Physics.Laws

  test "gravitational constant" do
    assert Laws.gravitational_constant == 6.67e-11
  end

end
