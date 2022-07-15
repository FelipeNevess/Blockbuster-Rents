class MovieActor < ApplicationRecord
  belongs_to :actor, optional: true
  belongs_to :movie, optional: true
end
