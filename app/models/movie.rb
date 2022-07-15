class Movie < ApplicationRecord
  validates :title,
            :title_producer,
            :release_year,
            :background_image,
            :background_video,
            :card_image,
            :description, presence: true
  validates :release_year, numericality: true
  validates :description, length: { minimum: 50 }

  has_many :movie_categories
  has_many :categories, through: :movie_categories

  has_many :movie_actors
  has_many :actors, through: :movie_actors

  has_many :movie_directors
  has_many :directors, through: :movie_directors
end
