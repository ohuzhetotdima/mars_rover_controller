require_relative './test_helper'

describe MarsRover::Position do
  it 'initializes correctly' do
    position = MarsRover::Position.new(['3', '4', 'W']) # as we get strings from input file

    assert_equal 3, position.x
    assert_equal 4, position.y
    assert_instance_of MarsRover::Directions::West, position.direction
  end
end
