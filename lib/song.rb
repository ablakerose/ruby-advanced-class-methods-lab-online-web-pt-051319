class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create
    song = self.new
    song.save
    song
  end

  def save
    self.class.all << self
  end

  def self.new_by_name(string_name_of_song)
    song = self.new
    song.name = string_name_of_song
    song
  end

  def self.create_by_name(string_name_of_song)
    song = self.new
    song.name = string_name_of_song
    song.save
    song
  end

  def self.find_by_name(string_name_of_song)
    array_of_songs.all.detect do |song_name|
      array_of_songs.name == string_name_of_song
  end

  end

end
