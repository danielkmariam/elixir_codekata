defmodule Calculate do

  def to_nearest_tenth(velocity) do
    Float.ceil(velocity, 2)
  end

  def to_kilometer(value) do
    value / 1000
  end

  def to_meter(value) do
    value * 1000
  end

  def square_root(value) do
    :math.sqrt(value)
  end

  def squared(value) do
    value * value
  end

end
