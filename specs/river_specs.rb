require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")

class RiverTest < MiniTest::Test
  def setup
    fishes = [Fish.new("fish1"), Fish.new("fish2"), Fish.new("fish3")]
    @river = River.new("Ebro", fishes)


  end

  def test_river_has_name
    assert_equal("Ebro", @river.name)
  end
end
