module MarsRover
  class Movement
    class << self
      def move(rover)
        return unless move_possible?(rover)

        direction = rover.direction.to_s

        case direction
        when 'N' then rover.y += 1
        when 'E' then rover.x += 1
        when 'S' then rover.y -= 1
        when 'W' then rover.x -= 1
        end
      end

      private

      def move_possible?(rover)
        plateau   = rover.plateau
        direction = rover.direction.to_s

        case direction
        when 'N' then rover.y < plateau.y_max
        when 'E' then rover.x < plateau.x_max
        when 'S' then rover.y > plateau.y_min
        when 'W' then rover.x > plateau.x_min
        end
      end
    end
  end
end
