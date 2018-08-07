require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")
# require_relative("../bear.rb")

class RiverTest < MiniTest::Test
  def setup
    fishes = [Fish.new("fish1").name, Fish.new("fish2").name, Fish.new("fish3").name]
    @river = River.new("Ebro", fishes)


  end

  def test_river_has_name
    assert_equal("Ebro", @river.name)
  end

  def test_check_river_fishes
    expected = ["fish1", "fish2", "fish3"]
    assert_equal(expected, @river.fishes)
  end

  def test_lose_a_fish
    expected = ["fish2", "fish3"]
    @river.lose_a_fish
    assert_equal(expected, @river.fishes)
  end


end
