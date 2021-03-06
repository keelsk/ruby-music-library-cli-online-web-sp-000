require 'pry'
class Artist
  extend Concerns::Findable
  
  attr_accessor :name, :songs, :song
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(artist)
    new_artist = Artist.new(artist)
    new_artist.save
    new_artist
  end
  
  def add_song(song)
    if !(song.artist)
      song.artist = self
      if !(@songs.include?(song))
        @songs << song 
        #binding.pry
      end
    end
  end
  
  # def artist_songs
  #   Song.all.select {|song| song.artist == self}
  # end 
  
  def genres
    genres = []
    selected_genres = @songs.each {|song| genres << song.genre}
    genres.uniq
  end
  
end