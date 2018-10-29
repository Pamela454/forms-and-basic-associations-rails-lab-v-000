class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name #convenience attribute on a model 
      self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def genre_name
      self.try(:genre).try(:name)
  end

  def genre=(name)
    genre = Genre.find_or_create_by(name: name)
    self.genre = genre
  end

end
