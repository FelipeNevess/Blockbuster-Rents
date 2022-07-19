class Favorite < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates  :movie_id, uniqueness: { scope: :user_id, message: 'Esse filme já está em favoritado' }
end
