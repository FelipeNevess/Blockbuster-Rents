class MovieCategory < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :movie, optional: true
end
