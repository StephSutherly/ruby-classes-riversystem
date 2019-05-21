require('minitest/autorun')
require('minitest/rg')
# require_relative('../bear.rb')
# require_relative('../river.rb')
require_relative('../fish.rb')

class TestFish  < MiniTest::Test

  def setup
    @fish1 = Fish.new("Trout")
    @fish2 = Fish.new("Salmon")
    @fish3 = Fish.new("Tuna")
    @fish4 = Fish.new("Bream")
  end

  def test_fish_name
    assert_equal("Salmon", @fish2.name)
  end

  def test_fish_name
    assert_equal("Bream", @fish4.name)
  end

end
