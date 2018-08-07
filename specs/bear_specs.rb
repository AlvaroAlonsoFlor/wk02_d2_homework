require("minitest/autorun")
require("minitest/rg")
require_relative("../bear.rb")

class BearTest < MiniTest::Test
  def setup
    @bear = Bear.new("Brownie")
  end

  def test_has_a_name
    assert_equal("Brownie",@bear.name)
  end

  def test_has_stomach
    assert_equal([], @bear.stomach)
  end
end
