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

  def test_it_returns_room_category
    room = Room.new(:bedroom, 10, 13)
    actual = room.category
    expected = :bedroom
    assert_equal expected, actual
  end

  def test_it_calculates_area
    room = Room.new(:bedroom, 10, 13)
    actual = room.area
    expected = 130
    assert_equal expected, actual
  end


end
