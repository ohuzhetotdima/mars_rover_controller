module MarsRover
  module Directions
    class South
      def turn_left
        East.new
      end

      def turn_right
        West.new
      end

      def to_s
        'S'
      end
    end
  end
end
