require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBear  < MiniTest::Test

  def setup
    stomach = []
    @brownbear = Bear.new("Manu", "Brown", stomach)
    @fish2 = Fish.new("Salmon")
    @river = River.new("Thelon", [@fish2])
  end

  def test_bear_name
    assert_equal("Manu", @brownbear.name)
  end

  def test_bear_type
    assert_equal("Brown", @brownbear.type)
  end

  def test_bear_stomach
    assert_equal([], @brownbear.stomach)
  end

  def test_bear_eats_fish
    @brownbear.eat_fish(@fish2)
    assert_equal([@fish2],@brownbear.stomach)
  end

  def test_bear_fish_count__empty
    assert_equal(0, @brownbear.bear_fish_count)
  end

  def test_bear_fish_count__with_fish
    @brownbear.eat_fish(@fish2)
    assert_equal(1, @brownbear.bear_fish_count)
  end

#Can test before and after function is called
  def test_river_loses_fish_when_bear_eats_one
    assert_equal(1, @river.fish_count)
    assert_equal(0, @brownbear.bear_fish_count)
    @brownbear.take_fish_from_river(@river)
    assert_equal(0, @river.fish_count)
    assert_equal(1, @brownbear.bear_fish_count)
  end

  def test_bear_roar
    assert_equal("Rawwwwr", @brownbear.bear_roar)
  end
end
