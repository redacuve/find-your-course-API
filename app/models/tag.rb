class Tag < ApplicationRecord
  # associations
  has_many :tagged, class_name: 'CourseTag', foreign_key: 'tag_id', dependent: :destroy

  # validations
  validates_presence_of :title
end
