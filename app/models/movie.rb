class Movie < ApplicationRecord
  include PgSearch::Model

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

  has_many :rents
  has_many :users, through: :rents

  has_many :favorites, dependent: :destroy

  pg_search_scope :search_by_title, against: :title

  def liked_by?(user)
    favorites.where(user_id: user).exists?
  end

  def rent_by?(user)
    rents.where(user_id: user).exists?
  end

  def rent_by_date?(user, movie)
    rents.where(movie_id: movie, user_id: user)[0][:created_at]
  end
end
