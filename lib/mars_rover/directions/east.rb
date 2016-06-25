module MarsRover
  module Directions
    class East
      def turn_left
        North.new
      end

      def turn_right
        South.new
      end

      def to_s
        'E'
      end
    end
  end
end
