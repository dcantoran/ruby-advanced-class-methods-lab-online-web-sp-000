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
    song = self.new
    song.name = song_name
    song
  end 
  
  def self.create_by_name(song_name)
    song = self.create 
    song.name = song_name
    song
  end 
  
  def self.find_by_name(song_name)
    @@all.each do |song|
      if song.name == song_name
        return song
      end 
    end 
      false 
  end 
  
  def self.find_or_create_by_name(name_str)
    # if !self.find_by_name(name_str)
    #   create_by_name(name_str)
    # else 
    #   self.find_by_name(name_str)
    # end 
    create_by_name(name_str) if find_by_name(name_str) == false
    
  end 

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.destroy_all
    @@all.clear
  end 

end
