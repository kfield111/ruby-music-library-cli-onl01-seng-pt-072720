require 'pry'

class Artist
  attr_accessor :name, :songs
  attr_reader :genre

  @@all = []

  def initialize (name)
    @name = name
    @songs = []
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def self.create (name)
    self.new (name)
    self
  end

  def songs
    @songs
  end

  def add_song (song)
    if song.artist == nil
      @songs << song
      song.artist = self
    else
      song.artist
    end
  end

  def genres
    self.songs.select {|temp| temp.genre}
  end


end
