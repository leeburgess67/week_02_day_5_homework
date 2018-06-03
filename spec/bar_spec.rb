require ("minitest/autorun")
require_relative ("../rooms.rb")
require_relative ("../guest.rb")
require_relative ("../bar.rb")
require_relative ("../drink.rb")
require ("minitest/rg")
require("pry")



class BarTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Axl Rose", "November Rain", 50)
    @guest2 = Guest.new("Bon Scott", "Highway to hell", 5)
    @guest3 = Guest.new("Ozzy Osbourne", "Children of the grave", 10)
    @guest4 = Guest.new("Rob Halford", "Painkiller", 0)
    @guest5 = Guest.new("Bruce Dickenson", "Run to the hills", 15)

    @metal_room = Room.new("Metal Room", 4, [@guest1, @guest2, @guest3, @guest4], [@song1, @song2, @song3], 10)

    @rock_room = Room.new("Rock Room", 4, [@guest5, @guest6, @guest7], [@song4, @song5, @song6], 15)

    @cheese_room = Room.new("Cheese Room", 4, [], [@song7, @song8], 5)

    @vodka = Drink.new("vodka", 2.5, 3)
    @beer = Drink.new("beer", 3, 1.5)

    stock = {@vodka => 5, @beer => 10}

    @tipsy = Bar.new("The Tipsy Cow Bar", stock, 200)

  end


  def test_take_order()
    @tipsy.take_order(@vodka)
  assert_equal(202.5, @tipsy.till)
  end

  def test_check_stock()
    assert_equal(10, @tipsy.check_stock(@vodka))

  end

end
