class Genre < ApplicationRecord
  validates :name, presence: true

  has_many :movie_genres
  has_many :movies, through: :movie_genres

  def average_movie_rating
    movies.average(:rating)
  end
end
