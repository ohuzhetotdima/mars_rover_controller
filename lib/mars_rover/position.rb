module MarsRover # Is used for initial position only.
  class Position
    attr_reader :x, :y, :direction

    def initialize(initial_position)
      @x         = initial_position[0].to_i
      @y         = initial_position[1].to_i
      @direction = rover_direction(initial_position[2])
    end

    private

    def rover_direction(input_str)
      case input_str
      when 'N'
        MarsRover::Directions::North.new
      when 'S'
        MarsRover::Directions::South.new
      when 'E'
        MarsRover::Directions::East.new
      when 'W'
        MarsRover::Directions::West.new
      end
    end
  end
end
