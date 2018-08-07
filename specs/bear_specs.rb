require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")
require_relative("../river.rb")
require_relative("../fish.rb")

class BearTest < MiniTest::Test
  def setup
    fish1 = Fish.new("fish1")
    fish2 = Fish.new("fish2")
    fish3 = Fish.new("fish3")
    fishes = [fish1, fish2, fish3]


    @bear1 = Bear.new("Brownie")
    @bear2 = Bear.new("Blackie", ["fish1", "fish2"])

    @river = River.new("Ebro", fishes)
  end

  def test_has_a_name
    assert_equal("Brownie",@bear1.name)
  end

  def test_has_stomach
    assert_equal([], @bear1.stomach)
  end

  def test_can_roar
    assert_equal("Grr!", @bear1.roar)
  end

  def test_food_count_is_empty
    assert_equal("The bear hasn't eaten any food recently", @bear1.count_food)
  end

  def test_food_count
    expected = "The bear has eaten 2 fishes"
    assert_equal(expected, @bear2.count_food)
  end

  def test_take_a_fish
    @bear1.eat_fish(@river)
    assert_equal(1, @bear1.stomach.count)
  end
end
