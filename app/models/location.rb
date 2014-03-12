class Location
  attr_reader :x, :y, :z

  def initialize(x, y, z)
    @x, @y, @z = x, y, z
  end

  def ==(other_location)
    x == other_location.x && y == other_location.y && z == other_location.z
  end
end