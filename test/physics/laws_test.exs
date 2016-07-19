defmodule PhysicsLawsTest do
  use ExUnit.Case, async: true

  test "gravitational constant" do
    assert Physics.Laws.gravitational_constant == 6.67e-11
  end

end
