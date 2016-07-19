defmodule PhysicsCalculateTest do
  use ExUnit.Case, async: true

  test "change value to kilometers" do
    assert Calculate.to_kilometer(2000) == 2
  end

  test "change velocity to nearest tenth" do
    assert Calculate.to_nearest_tenth(19.88322) == 19.9
  end
end
