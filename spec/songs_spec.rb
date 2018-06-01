require ("minitest/autorun")
require_relative ("../songs.rb")
require ("minitest/rg")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Highway to hell")
    @song2 = Song.new("Run to the hills")
    @song3 = Song.new("Rocket Man")
    @song4 = Song.new("Painkiller")
    @song5 = Song.new("South of heaven")
    @song6 = Song.new("Seek & Destroy")
    @song7 = Song.new("November Rain")
    @song8 = Song.new("Clenching the fists of devent")
    @song9 = Song.new("Take the power back")
    @song10 = Song.new("Black")
  end






end
