require 'pry'

class Song
  attr_accessor :name, :artist_name
  @@all = []
  
  def self.create
    song = self.new 
    song.save
    song
  end 
  
  def self.new_by_name(song_name)
    new_song = self.new(song_name)
    new_song.save 
    new_song
    # binding.pry
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  

end
