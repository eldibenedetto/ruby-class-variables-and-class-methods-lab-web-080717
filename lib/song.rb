class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def class_variable_get(count)
    @@count = count
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    h = {}
    @@genres.each do |genre|
      h[genre] = @@genres.count(genre)
    end
    h
  end

  def self.artist_count
    h = {}
    @@artists.each do |artist|
      h[artist] = @@artists.count(artist)
    end
    h
  end
  
end
