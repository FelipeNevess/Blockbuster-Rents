class Rent < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates  :movie_id, uniqueness: { scope: :user_id, message: 'Este filme já foi alugado' }
end
