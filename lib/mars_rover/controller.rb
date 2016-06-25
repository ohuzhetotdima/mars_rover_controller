module MarsRover
  class Controller
    def initialize(input_file_path)
      @input_f  = File.open(File.expand_path(input_file_path), 'r')
      @output_f = File.open('output.txt', 'w')

      init_plateau

      while !@input_f.eof?
        process_rover
      end
    end

    private

    def init_plateau
      max_coords = @input_f.readline.split(/\s+/)
      @plateau   = MarsRover::Plateau.new(max_coords)
    end

    def process_rover
      position_input = @input_f.readline.split(/\s+/)
      position       = MarsRover::Position.new(position_input)
      rover_commands = @input_f.readline.strip

      rover = MarsRover::Rover.new(position, @plateau)

      rover_commands.each_char { |command| rover.process(command) }

      @output_f.write output(rover)
      puts output(rover)
    end

    def output(rover)
      text = rover.valid? ? [rover.x, rover.y, rover.direction].join(' ') : rover.errors.map(&:message).join("\n")
      text << "\n"
    end
  end
end
