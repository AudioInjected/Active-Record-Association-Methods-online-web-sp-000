require 'pry'
class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
   self.songs
  end

  def artist_count
    binding.pry
    self.artists.size
  end

  def all_artist_names
    binding.pry
    self.artists.collect {|artist| artist.name}
  end
end
