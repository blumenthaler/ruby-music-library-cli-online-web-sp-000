class Artist
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    self.all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save
    artist
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    if song.artist == self
      nil
    else
      song.artist = self
    end
    if @songs.include?(song)
      nil
    else
    @songs << song
    end
    song
  end
  
  def genres
    
  end
  
end