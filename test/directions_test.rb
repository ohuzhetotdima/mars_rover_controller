require_relative './test_helper'

describe MarsRover::Directions::North do
  it 'turns left and returns instance of West direction' do
    direction = MarsRover::Directions::North.new.turn_left
    assert_instance_of MarsRover::Directions::West, direction
  end

  it 'turns right and returns instance of East direction' do
    direction = MarsRover::Directions::North.new.turn_right
    assert_instance_of MarsRover::Directions::East, direction
  end
end

describe MarsRover::Directions::East do
  it 'turns left and returns instance of North direction' do
    direction = MarsRover::Directions::East.new.turn_left
    assert_instance_of MarsRover::Directions::North, direction
  end

  it 'turns right and returns instance of South direction' do
    direction = MarsRover::Directions::East.new.turn_right
    assert_instance_of MarsRover::Directions::South, direction
  end
end

describe MarsRover::Directions::South do
  it 'turns left and returns instance of East direction' do
    direction = MarsRover::Directions::South.new.turn_left
    assert_instance_of MarsRover::Directions::East, direction
  end

  it 'turns right and returns instance of West direction' do
    direction = MarsRover::Directions::South.new.turn_right
    assert_instance_of MarsRover::Directions::West, direction
  end
end

describe MarsRover::Directions::West do
  it 'turns left and returns instance of South direction' do
    direction = MarsRover::Directions::West.new.turn_left
    assert_instance_of MarsRover::Directions::South, direction
  end

  it 'turns right and returns instance of North direction' do
    direction = MarsRover::Directions::West.new.turn_right
    assert_instance_of MarsRover::Directions::North, direction
  end
end
