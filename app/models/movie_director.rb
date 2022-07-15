class MovieDirector < ApplicationRecord
  belongs_to :director, optional: true
  belongs_to :movie, optional: true
end
