class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new
    @@all.push song
    song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    @@all.push song
    song
  end
  
  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all.push song
    song
  end
  
  def self.find_by_name
    @@all.find{|x| x.name == name}
#    @@all.find{|song| song.name == song}
  end
  
  def self.name(name)
    @name = name
  end

end
