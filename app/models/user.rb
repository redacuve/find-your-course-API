class User < ApplicationRecord
  has_many :favorites, class_name: 'Favourite', foreign_key: 'user_id'
  has_many :ratings, class_name: 'Rating', foreign_key: 'user_id'
end
