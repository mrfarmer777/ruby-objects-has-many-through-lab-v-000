class Song
  attr_accessor :name, :artist, :genre

  @@all=[]

  def initialize(name,artist,genre)
    @name=name
    @artist=Artist.new(artist)
    @genre=Genre.new(genre)
    @@all<<self
  end

  def self.all
    @@all
  end

end
