module MarsRover
  module Directions
    class West
      def turn_left
        South.new
      end

      def turn_right
        North.new
      end

      def to_s
        'W'
      end
    end
  end
end
