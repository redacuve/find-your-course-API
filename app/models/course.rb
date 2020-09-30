class Course < ApplicationRecord
  has_many :favoritors, class_name: 'Favourite', foreign_key: 'course_id'
  has_many :raters, class_name: 'Favourite', foreign_key: 'course_id'
  has_many :tags, class_name: 'CourseRatings', foreign_key: 'course_id'
end
