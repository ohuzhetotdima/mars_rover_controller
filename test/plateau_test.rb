require_relative './test_helper'

describe MarsRover::Plateau do
  it 'initializes correctly' do
    plateau = MarsRover::Plateau.new(['10', '20']) # as we get strings from input file

    assert_equal 0,  plateau.x_min
    assert_equal 0,  plateau.y_min
    assert_equal 10, plateau.x_max
    assert_equal 20, plateau.y_max
  end
end
