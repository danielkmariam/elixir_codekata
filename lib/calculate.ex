defmodule Calculate do

  def to_nearest_tenth(velocity) do
    Float.ceil(velocity, 1)
  end

  def to_kilometer(value) do
    value / 1000
  end

end
