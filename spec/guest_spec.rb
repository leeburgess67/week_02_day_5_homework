require ("minitest/autorun")
require_relative ("../guest.rb")
require_relative ("../rooms.rb")
require_relative ("../drink.rb")
require_relative ("../bar.rb")
require ("minitest/rg")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Axl Rose", "November Rain", 50)
    @guest2 = Guest.new("Bon Scott", "Highway to hell", 5)
    @guest3 = Guest.new("Ozzy Osbourne", "Children of the grave", 10)
    @guest4 = Guest.new("Rob Halford", "Painkiller", 0)
    @guest5 = Guest.new("Bruce Dickenson", "Run to the hills", 15)

    @song1 = Song.new("Highway to hell")
    @song2 = Song.new("Run to the hills")
    @song3 = Song.new("Rocket Man")
    @song4 = Song.new("Painkiller")
    @song5 = Song.new("South of heaven")
    @song6 = Song.new("Seek & Destroy")
    @song7 = Song.new("November Rain")
    @song8 = Song.new("Clenching the fists of decent")
    @song9 = Song.new("Take the power back")
    @song10 = Song.new("Black")

    @metal_room = Room.new("Metal Room", 4, [@guest1, @guest2, @guest3, @guest4], [@song1, @song2, @song3], 10)

    @rock_room = Room.new("Rock Room", 4, [@guest5, @guest6, @guest7], [@song4, @song5, @song6], 15)

    @cheese_room = Room.new("Cheese Room", 4, [], [@song7, @song8], 5)

    @vodka = Drink.new("vodka", 2.5, 3)
    @beer = Drink.new("beer", 3, 1.5)

    @tipsy = Bar.new("The Tipsy Cow Bar", [@vodka, @beer], 200)
  end

  def test_has_name
    assert_equal("Axl Rose", @guest1.name)
  end

  def test_has_fav_song
    assert_equal("Highway to hell", @guest2.fav_song)
  end

  def test_has_money
    assert_equal(10, @guest3.wallet)
  end

  def test_guest_can_buy_drink__wallet_decreases
  @guest1.buy_drink(@vodka, @tipsy)
  assert_equal(47.5, @guest1.wallet)
  end

  def test_guest_can_buy_drink__bar_till_increases
    @guest1.buy_drink(@vodka, @tipsy)
    assert_equal(202.5, @tipsy.till)
  end

  def 














end
