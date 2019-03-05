require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../bear.rb')
require_relative('../fish.rb')

class RiverTest < MiniTest::Test

  def setup()
    @river1 = River.new("Amazon")

  end

  def test_can_create_river()
    assert_equal(River, @river1.class())
  end

  def test_river_name()
    assert_equal("Amazon", @river1.name)
  end

  def test_fish_count()
    assert_equal(3, @river1.fish.count())
  end

end
