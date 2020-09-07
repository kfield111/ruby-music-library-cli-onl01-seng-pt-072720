class Genre
  attr_accessor :name
  attr_reader :songs

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


end