require ("minitest/autorun")
require_relative ("../drink.rb")
require_relative ("../bar.rb")
require_relative ("../guest.rb")
require ("minitest/rg")

class DrinkTest < MiniTest::Test

  def setup
    @vodka = Drink.new("vodka", 2.5, 3)
    @beer = Drink.new("beer", 3, 1.5)
  end


  def test_get_drink_price
    assert_equal(2.5, @vodka.get_drink_price)
  end

  def test_get_drink_alcohol_level
  assert_equal(1.5, @beer.alcohol_level)

  end














end
