module MarsRover
  class InvalidCommandError < StandardError
    def to_s
      'Your command is invalid. You can only use L, R or M commands.'
    end
  end

  class OutOfBoundsError < StandardError
    def to_s
      'Your command is invalid. You are moving or placing rover out of bounds. Check coordinates.'
    end
  end

  class Rover
    attr_accessor :plateau, :x, :y, :direction, :errors

    def initialize(position, plateau)
      @plateau   = plateau
      @x         = position.x
      @y         = position.y
      @direction = position.direction
      @errors    = []

      check_bounds
    end

    def process(command)
      case command
      when 'M'
        move
      when 'L'
        turn('left')
      when 'R'
        turn('right')
      else
        self.errors << InvalidCommandError.new
      end
    end

    def valid?
      self.errors.empty?
    end

    def move
      MarsRover::Movement.move(self)
    end

    def turn(direction)
      @direction = @direction.send("turn_#{direction}")
    end

    private

    def check_bounds
      out_of_bounds_condition = x > plateau.x_max || x < plateau.x_min || y > plateau.y_max || y < plateau.y_min
      self.errors << OutOfBoundsError.new if out_of_bounds_condition
    end
  end
end
