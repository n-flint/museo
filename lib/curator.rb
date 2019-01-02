class Curator
  attr_reader :artists,
              :photographs

  def initialize
    @artists = []
    @photographs = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  # use .find enumerable
  def find_artist_by_id(id)
    correct_artist = Hash.new
    @artists.each do |artist|
      if id == artist[:id]
        correct_artist = artist
      end
    end
    correct_artist
  end

  # use .find enumerable
  def find_photograph_by_id(id)
    correct_photo = Hash.new
    @photographs.each do |photo|
      if id == photo[:id]
        correct_photo = photo
      end
    end
    correct_photo
  end

  def find_photographs_by_artist(artist)
    artist_photos = []
    @photographs.each do |photo|
      if artist[:id] == photo[:artist_id]
        artist_photos << photo
      end
    end
    artist_photos
  end

  #use the find_photographs_by_artist method here
  def artists_with_multiple_photographs
    artists = []
    @artists.each do |artist|
      @photographs.each do |photo|
        if artist[:id] == photo[:artist_id]
          artists << artist
        end
      end
    end
    artists
  end
end
