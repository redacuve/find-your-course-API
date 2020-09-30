class Rating < ApplicationRecord
  # associations
  belongs_to :course
  belongs_to :user

  # validations
  validates_presence_of :user_id, :course_id, :rating
end
