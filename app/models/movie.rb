class Movie < ApplicationRecord
  validates :title,
            :release_year,
            :duration,
            :classification,
            :description, presence: true
  validates :title, length: { minimum: 2, maximum: 50 }
  validates :release_year, numericality: true
  validates :duration, length: { minimum: 1 }
  validates :description, length: { minimum: 50 }
end
