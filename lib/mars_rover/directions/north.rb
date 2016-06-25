module MarsRover
  module Directions
    class North
      def turn_left
        West.new
      end

      def turn_right
        East.new
      end

      def to_s
        'N'
      end
    end
  end
end
