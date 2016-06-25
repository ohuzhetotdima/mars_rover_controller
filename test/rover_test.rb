require_relative './test_helper'

describe MarsRover::Rover do
  def plateau
    MarsRover::Plateau.new(['10', '20'])
  end

  def position
    MarsRover::Position.new(['3', '4', 'W'])
  end

  it 'returns error when initialized out of bounds' do
    invalid_position = MarsRover::Position.new(['11', '21', 'W'])
    rover            = MarsRover::Rover.new(invalid_position, plateau)

    assert_equal rover.valid?, false
    assert_equal rover.errors.first.message, MarsRover::OutOfBoundsError.new.message
  end

  it 'returns error when given invalid commands' do
    rover = MarsRover::Rover.new(position, plateau)

    rover.process('Fail command')

    assert_equal rover.valid?, false
    assert_equal rover.errors.first.message, MarsRover::InvalidCommandError.new.message
  end

  it 'initializes correctly' do
    rover = MarsRover::Rover.new(position, plateau)

    assert_equal 3, rover.x
    assert_equal 4, rover.y
    assert_instance_of MarsRover::Directions::West, rover.direction
    assert_equal rover.valid?, true
  end

  it 'can move' do
    rover = MarsRover::Rover.new(position, plateau)

    rover.process('M')

    assert_equal 2, rover.x
    assert_equal 4, rover.y
    assert_instance_of MarsRover::Directions::West, rover.direction
  end

  it 'can turn left' do
    rover = MarsRover::Rover.new(position, plateau)

    rover.process('L')

    assert_instance_of MarsRover::Directions::South, rover.direction
  end

  it 'can turn right' do
    rover = MarsRover::Rover.new(position, plateau)

    rover.process('R')

    assert_instance_of MarsRover::Directions::North, rover.direction
  end
end
