class Genre
  attr_accessor :name

  @@all=[]

  def self.all
    @@all
  end

  def initialize(name)
    @name=name
    @@all<<self
  end

  def new_song(name, artist)
    song=Song.new(name,self)
    song.artist=artist
  end

  def songs
    res=[]
    Song.all.each do |song| 
      if song.genre==self
        res<<song
      end
    end
    res
  end

  def artists
    res=[]
    Artist.all.each do |artist|
      if artist.genre==self
        res<<song
      end
    end
    res
  end
      

  