require_relative './test_helper'

describe MarsRover::Movement do
  def plateau
    MarsRover::Plateau.new(['5', '5'])
  end

  describe 'rover can not move out of bounds' do
    it 'can not move out of top bound, so it stays in place' do
      position = MarsRover::Position.new(['2', '5', 'N'])
      rover    = MarsRover::Rover.new(position, plateau)

      MarsRover::Movement.move(rover)

      assert_equal rover.y, 5
    end

    it 'can not move out of right bound, so it stays in place' do
      position = MarsRover::Position.new(['5', '2', 'E'])
      rover    = MarsRover::Rover.new(position, plateau)

      MarsRover::Movement.move(rover)

      assert_equal rover.x, 5
    end

    it 'can not move out of bottom bound, so it stays in place' do
      position = MarsRover::Position.new(['2', '0', 'S'])
      rover    = MarsRover::Rover.new(position, plateau)

      MarsRover::Movement.move(rover)

      assert_equal rover.y, 0
    end

    it 'can not move out of left bound, so it stays in place' do
      position = MarsRover::Position.new(['0', '2', 'W'])
      rover    = MarsRover::Rover.new(position, plateau)

      MarsRover::Movement.move(rover)

      assert_equal rover.x, 0
    end
  end

  describe 'rover can move inside bounds' do
    it 'moves top' do
      position = MarsRover::Position.new(['2', '4', 'N'])
      rover    = MarsRover::Rover.new(position, plateau)

      MarsRover::Movement.move(rover)

      assert_equal rover.y, 5
    end

    it 'moves right' do
      position = MarsRover::Position.new(['4', '2', 'E'])
      rover    = MarsRover::Rover.new(position, plateau)

      MarsRover::Movement.move(rover)

      assert_equal rover.x, 5
    end

    it 'moves bottom' do
      position = MarsRover::Position.new(['2', '1', 'S'])
      rover    = MarsRover::Rover.new(position, plateau)

      MarsRover::Movement.move(rover)

      assert_equal rover.y, 0
    end

    it 'moves left' do
      position = MarsRover::Position.new(['1', '2', 'W'])
      rover    = MarsRover::Rover.new(position, plateau)

      MarsRover::Movement.move(rover)

      assert_equal rover.x, 0
    end
  end
end
