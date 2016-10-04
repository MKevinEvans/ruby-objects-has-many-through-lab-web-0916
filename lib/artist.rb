class Artist
  attr_accessor :name, :songs

  def initialize(name)
    self.name = name
    @songs = []
  end

  def add_song(song)
    @songs<<song
    song.artist = self
  end

  def self.songs
    @songs
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

end
