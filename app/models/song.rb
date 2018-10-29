class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name
      self.try(:artist).try(:name)
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end

  def genre
      self.try(:artist).try(:name)
  end

  def genre=(genre)
    genre = Genre.find_or_create_by(id: id)
    self.genre = genre
  end

end
