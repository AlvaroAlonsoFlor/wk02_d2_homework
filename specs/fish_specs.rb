require("minitest/autorun")
require("minitest/rg")
require_relative("../fish.rb")

class FishTest < MiniTest::Test

  def setup
    @fish = Fish.new("Fishie")
  end

  def test_has_a_name
    assert_equal("Fishie", @fish.name)
  end

end
