class Song
  attr_accessor :name, :artist, :genre

  @@all=[]

  def initialize(name,artist,genre)
    @name=name    
    @genre=genre
    @@all<<self
  end

end
