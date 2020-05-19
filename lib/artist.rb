class Artist
  attr_accessor :name

  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select { |song| song.name == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song)
    song = Song.new
    add_song(song)
  end

  def self.song_count
  end

end
