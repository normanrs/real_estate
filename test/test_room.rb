require 'minitest/autorun'
require 'minitest/pride'
require './lib/room.rb'

class RoomTest < Minitest::Test
  def test_it_exists

    assert_instance_of Room, room
  end

end
