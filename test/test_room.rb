require 'minitest/autorun'
require 'minitest/pride'
require './lib/room.rb'

class RoomTest < Minitest::Test
  def test_it_exists
    room = Room.new(1, 2, 3)
    assert_instance_of Room, room
  end

  def test_it_takes_arguments
    room = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room
  end
end
