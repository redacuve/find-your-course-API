class Course < ApplicationRecord
  # associations
  has_many :favoritors, class_name: 'Favourite', foreign_key: 'course_id', dependent: :destroy
  has_many :raters, class_name: 'Rating', foreign_key: 'course_id', dependent: :destroy
  has_many :tags, class_name: 'CourseTag', foreign_key: 'course_id', dependent: :destroy
  has_many :tags_name, through: :tags, source: :tag

  # validatios
  validates_presence_of :name, :description, :price

  def favoritor?(user_id)
    favoritors.where(user_id: user_id).any?
  end
end
