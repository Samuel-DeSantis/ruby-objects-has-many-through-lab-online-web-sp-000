class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    save
  end

  def save
    @@all << self
  end

  def all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, genre)
  end
end
