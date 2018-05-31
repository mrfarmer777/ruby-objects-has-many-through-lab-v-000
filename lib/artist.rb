require 'pry'

class Artist

  attr_accessor :name, :genres

  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def new_song(name,genre)
    song=Song.new(name,genre,self)
    song
  end

  def songs
    res=[]
    Song.all.each do |song|
      if song.artist==self
        res<<song
      end
    end
    res
  end

  def genres
    self.songs.collect {|song| song.genre}
  end


end
