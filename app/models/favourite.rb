class Favourite < ApplicationRecord
  # associations
  belongs_to :course
  belongs_to :user

  # validations
  validates_presence_of :course_id, :user_id
end
