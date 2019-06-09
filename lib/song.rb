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
    self.all.detect do |song_name|
      song_name.name == string_name_of_song
    end
  end

  def self.find_or_create_by_name(string_name_of_song)
    song = self.find_by_name(string_name_of_song)
      if song == nil
        self.create_by_name(string_name_of_song)

      else
        song
      end
  end

end
