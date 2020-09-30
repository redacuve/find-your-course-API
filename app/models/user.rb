class User < ApplicationRecord
  # secure password
  has_secure_password

  # associations
  has_many :favorites, class_name: 'Favourite', foreign_key: 'user_id', dependent: :destroy
  has_many :ratings, class_name: 'Rating', foreign_key: 'user_id', dependent: :destroy

  # validations
  validates_presence_of :username, :email, :password_digest
end
