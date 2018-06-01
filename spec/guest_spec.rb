require ("minitest/autorun")
require_relative ("../guest.rb")
require ("minitest/rg")

class GuestTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Axl Rose", "November Rain")
    @guest2 = Guest.new("Bon Scott", "Highway to hell")
    @guest3 = Guest.new("Ozzy Osbourne", "Children of the grave")
    @guest4 = Guest.new("Rob Halford", "Painkiller")
    @guest5 = Guest.new("Bruce Dickenson", "Run to the hills")
  end

  def test_has_name
    assert_equal("Axl Rose", @guest1.name)
  end

  def test_has_fav_song
    assert_equal("Highway to hell", @guest2.fav_song)
  end












end
