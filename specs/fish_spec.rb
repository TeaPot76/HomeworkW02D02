require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bear.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("DoNotEatMe")
  end

  def test_can_create_fish()
    assert_equal(Fish, @fish1.class())
  end

  def test_fish_name()
    assert_equal("DoNotEatMe", @fish1.fish_name)
  end
end
