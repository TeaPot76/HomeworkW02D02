require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class BearTest < MiniTest::Test

  def setup()
    @bear1 = Bear.new("Uszatek", "Grizzly")
    @fish = "Lola"
    @river = River.new("LochNess")

  end

  def test_can_create_bear()
    assert_equal(Bear, @bear1.class())
   end

  def test_bear_name()
    assert_equal("Uszatek", @bear1.call)
  end

  def test_bear_type()
    assert_equal("Grizzly", @bear1.type)
  end

  def test_bear_with_no_fish()
    assert_equal(0, @bear1.fish_count())
  end

  def test_take_fish()
    river_fish_before = @river.fish_count()

    @bear1.take_fish(@river)
    assert_equal(1, @bear1.fish_count())
    assert_equal((river_fish_before - 1 ), @river.fish_count())
  end

  def test_bear_roar()
    assert_equal("Bear roar", @bear1.bear_roar("roar"))
  end


end
