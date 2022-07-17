class Address < ApplicationRecord
  validates   :number, uniqueness: true

  belongs_to  :user
end
