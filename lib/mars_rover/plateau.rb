module MarsRover
  class Plateau
    attr_accessor :x_min, :x_max, :y_min, :y_max

    def initialize(max_coords)
      @x_min = 0
      @y_min = 0
      @x_max = max_coords[0].to_i
      @y_max = max_coords[1].to_i
    end
  end
end
