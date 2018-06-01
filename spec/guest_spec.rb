require ("minitest/autorun")
require_relative ("../guest.rb")
require ("minitest/rg")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Axl Rose", "November Rain", 50)
    @guest2 = Guest.new("Bon Scott", "Highway to hell", 5)
    @guest3 = Guest.new("Ozzy Osbourne", "Children of the grave", 10)
    @guest4 = Guest.new("Rob Halford", "Painkiller", 0)
    @guest5 = Guest.new("Bruce Dickenson", "Run to the hills", 15)
  end

  def test_has_name
    assert_equal("Axl Rose", @guest1.name)
  end

  def test_has_fav_song
    assert_equal("Highway to hell", @guest2.fav_song)
  end

  def test_has_money
    assert_equal(10, @guest3.wallet)ß
  end












end
