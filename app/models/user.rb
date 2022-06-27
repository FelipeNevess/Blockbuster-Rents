class User < ApplicationRecord
  devise           :database_authenticatable,
                   :registerable,
                   :recoverable,
                   :rememberable,
                   :validatable

  validates        :name, presence: true

  has_one_attached :avatar
  validates        :avatar, content_type: %i[png jpg jpeg]

  def avatar_thumbnail
    if avatar.attached?
      avatar.variant(resize: '50x50^', extent: '50x50')
    else
      'user.svg'
    end
  end
end
