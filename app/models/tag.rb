class Tag < ApplicationRecord
  has_many :tagged, class_name: 'CourseRatings', foreign_key: 'tag_id'
end
