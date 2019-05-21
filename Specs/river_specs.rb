require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')

class TestRiver  < MiniTest::Test

  def setup
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Tuna")
    @fish4 = Fish.new("Bream")
    fish_in_river = [@fish1, @fish2, @fish3, @fish4]
    @river = River.new("Thelon", fish_in_river)
    stomach = []
    @brownbear = Bear.new("Manu", "Brown", stomach)
  end

  def test_river_name
    assert_equal("Thelon", @river.name)
  end

  def test_fish_in_river
    expected = [@fish1, @fish2, @fish3, @fish4]
    assert_equal(expected, @river.fish_in_river)
  end

  def test_river_loses_fish
    that_fish = @river.get_fish()
    expected = [@fish1, @fish2, @fish3]
    assert_equal(expected, @river.fish_in_river)
  end

  def test_river_fish_count
    assert_equal(4, @river.fish_count)
  end

end



# How Our Ecosystem Works
# A river should have a name e.g. "Amazon"
#////
# A river should hold many fish
#////
# A fish should have a name
#////
# A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
#////
# A bear should have an empty stomach ( maybe an array )
#////
# A bear should be able to take a fish from the river
#////
# A river should lose a fish when a bear takes a fish
#////
# Extensions
# A bear could have a roar method
# ////
# A bear could have a food_count method
#////
# A river could have a fish_count method
#////
