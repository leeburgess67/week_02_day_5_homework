require ("minitest/autorun")
require_relative ("../rooms.rb")
require_relative ("../guest.rb")
require_relative ("../songs.rb")
require ("minitest/rg")

class RoomTest < MiniTest::Test

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

    @guest1 = Guest.new("Axl Rose", "November Rain")
    @guest2 = Guest.new("Bon Scott", "Highway to hell")
    @guest3 = Guest.new("Ozzy Osbourne", "Children of the grave")
    @guest4 = Guest.new("Rob Halford", "Painkiller")
    @guest5 = Guest.new("Bruce Dickenson", "Run to the hills")

    @metal_room = Room.new("Metal Room", 5, [@guest1, @guest2, @guest3, @guest4], [@song1, @song2, @song3])

    @rock_room = Room.new("Rock Room", 4, [@guest5, @guest6, @guest7], [@song4, @song5, @song6])

    @cheese_room = Room.new("Cheese Room", 4, [], [@song7, @song8])
  end


    def test_room_has_name
      assert_equal("Metal Room", @metal_room.name)
    end

    def test_room_has_capacity
      assert_equal(4, @cheese_room.capacity)
    end

    def test_room_has_guests
      assert_equal(3, @rock_room.current_guests_in_room.count)
    end

    def test_room_has_songs
      assert_equal(2, @cheese_room.songs_available_in_room.count
      )
    end

    def test_add_song_to_room
        @cheese_room.add_song(@song9)
        assert_equal(3, @cheese_room.songs_available_in_room.count)
    end

    def test_check_in_guest
      @cheese_room.check_in(@guest8)
      assert_equal(1, @cheese_room.current_guests_in_room.count)
    end

    def test_check_out_guest
      @metal_room.check_out(@guest1)
      assert_equal(3, @metal_room.current_guests_in_room.count)
    end



















end
