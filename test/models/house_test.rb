require 'test_helper'

class HouseTest < ActiveSupport::TestCase
  test "House empty house should not save" do
    house = House.new
    assert_not house.save
  end
end
