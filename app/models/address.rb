class Address < ApplicationRecord
  validates   :number, uniqueness: true
  validates   :number,
              :zip_code,
              :city,
              :state,
              :street, presence: { message: 'deve estar presente' }

  belongs_to  :user
end
