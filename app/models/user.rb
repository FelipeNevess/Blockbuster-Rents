class User < ApplicationRecord
  devise           :database_authenticatable,
                   :registerable,
                   :recoverable,
                   :rememberable,
                   :validatable

  validates        :name,   presence: true
  validates        :avatar, content_type: %i[png jpg jpeg]

  has_one_attached :avatar

  has_many         :favorites

  has_one          :address

  has_many :rents
  has_many :movies, through: :rents

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize: '50x50^', extent: '50x50')
    else
      'user.svg'
    end
  end
end
