class CourseTag < ApplicationRecord
  # associations
  belongs_to :course
  belongs_to :tag

  # validations
  validates_presence_of :course_id, :tag_id
end
