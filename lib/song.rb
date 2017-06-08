require "Pry"

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  # @@artists_hash = {}
  # @@genres_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1

    @@artists << artist

    @@genres << genre

    # if @@artists_hash.fetch(artist, false)
    #   @@artists_hash[artist] += 1
    # else
    #   @@artists_hash[artist] = 1
    # end
    #
    # if @@genres_hash.fetch(genre, false)
    #   @@genres_hash[genre] += 1
    # else
    #   @@genres_hash[genre] = 1
    # end
  end

  def self.count
    @@count
  end

  # def self.artists
  #   @@artists_hash.keys
  # end

  # def self.artist_count
  #   @@artists_hash
  # end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    @@artists.each_with_object({}) do |artist, artist_hash|
      if artist_hash.fetch(artist, false)
        artist_hash[artist] += 1
      else
        artist_hash[artist] = 1
      end
    end
  end

  # def self.genres
  #   @@genres_hash.keys
  # end
  #
  # def self.genre_count
  #   @@genres_hash
  # end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, genre_hash|
      if genre_hash.fetch(genre, false)
        genre_hash[genre] += 1
      else
        genre_hash[genre] = 1
      end
    end
  end
end

#
# Song.new("Lucifer", "Jay-Z", "rap" )
# Song.new("99 Problems", "Jay-Z", "rap")
# Song.new("hit me baby one more time", "Brittany Spears", "pop")

# Pry.start
