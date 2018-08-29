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

end
