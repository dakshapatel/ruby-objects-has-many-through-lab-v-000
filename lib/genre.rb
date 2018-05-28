require 'pry'

class Genre

  attr_accessor :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all << artist
  end

  def new_song(name, artist)
    Song.new(name, self, artist)
  end

  def songs
    Songs.all.select {|song| song.genre ==self}
  end

  def artists
    self.songs.collect do |song|
      song.artist
    end
  end

end
