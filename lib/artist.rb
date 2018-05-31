class Artist

  attr_accessor :name, :songs, :genres

  @@all=[]

  def initialize(name)
    @name=name
    @songs=[]
    @@all<<self
  end

  def self.all
    @@all
  end





  end

end
