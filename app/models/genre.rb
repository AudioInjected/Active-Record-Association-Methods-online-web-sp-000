class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
   self.songs
  end

  def artist_count
    self.artists.size
  end

  def all_artist_names
    binding.pry
  end
end
