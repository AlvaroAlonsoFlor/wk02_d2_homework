require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")
require_relative("../river.rb")


class RiverTest < MiniTest::Test
  def setup

    fish1 = Fish.new("fish1")
    fish2 = Fish.new("fish2")
    fish3 = Fish.new("fish3")


    @fishes = [fish1, fish2, fish3] #changed into a instance variable to be able to use and check the autenticity of all the elements on test_check_river_fishes
    @river = River.new("Ebro", @fishes)


  end

  def test_river_has_name
    assert_equal("Ebro", @river.name)
  end

  def test_check_river_fishes
    expected = @fishes
    assert_equal(expected, @river.fishes)
  end

  def test_lose_a_fish
    # I could change the function to put number of fish and be able to lose more than 1 fish with the same function
    
    expected = 2 #changed it since test_check_river_fishes works and we only need to check how many fishes we have left
    @river.lose_a_fish
    assert_equal(expected, @river.fishes.count)
  end


end
