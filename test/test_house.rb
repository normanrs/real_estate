require 'minitest/autorun'
require 'minitest/pride'
require './lib/room.rb'
require './lib/house.rb'

class HouseTest < Minitest::Test
  def test_it_exists
    house = House.new(1, 2)
    assert_instance_of House, house
  end

  def test_it_takes_arguments
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_it_has_a_price
    house = House.new("$400000", "123 sugar lane")
    actual = house.price
    expected = "$400000"
    assert_equal expected, actual
  end

  def test_it_has_address
    house = House.new("$400000", "123 sugar lane")
    actual = house.address
    expected = "123 sugar lane"
    assert_equal expected, actual
  end

  def test_it_starts_with_no_rooms
    house = House.new("$400000", "123 sugar lane")
    actual = house.rooms
    expected = []
    assert_equal expected, actual
  end

  def test_it_can_add_rooms
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_1)
    house.add_room(room_2)
    actual = [(house.rooms[0].category), (house.rooms[1].category)]
    expected = [:bedroom, :bedroom]
    assert_equal expected, actual
  end

  def test_it_can_return_bedrooms
  house = House.new("$400000", "123 sugar lane")
  room_1 = Room.new(:bedroom, 10, 13)
  room_2 = Room.new(:bedroom, 11, 15)
  room_3 = Room.new(:living_room, 25, 15)
  room_4 = Room.new(:basement, 30, 41)
  house.add_room(room_1)
  house.add_room(room_2)
  house.add_room(room_3)
  house.add_room(room_4)
  actual = house.rooms_from_category(:bedroom).count
  expected = 2
  assert_equal expected, actual
  end

  def test_it_can_return_basement
  house = House.new("$400000", "123 sugar lane")
  room_1 = Room.new(:bedroom, 10, 13)
  room_2 = Room.new(:bedroom, 11, 15)
  room_3 = Room.new(:living_room, 25, 15)
  room_4 = Room.new(:basement, 30, 41)
  house.add_room(room_1)
  house.add_room(room_2)
  house.add_room(room_3)
  house.add_room(room_4)
  actual = house.rooms_from_category(:basement).count
  expected = 1
  assert_equal expected, actual
  end

  def test_it_can_calculate_area
  house = House.new("$400000", "123 sugar lane")
  room_1 = Room.new(:bedroom, 10, 13)
  room_2 = Room.new(:bedroom, 11, 15)
  room_3 = Room.new(:living_room, 25, 15)
  room_4 = Room.new(:basement, 30, 41)
  house.add_room(room_1)
  house.add_room(room_2)
  house.add_room(room_3)
  house.add_room(room_4)
  actual = house.area
  expected = 1900
  assert_equal expected, actual
  end

end
