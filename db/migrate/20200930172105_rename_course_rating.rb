class RenameCourseRating < ActiveRecord::Migration[6.0]
  def change
    rename_table :course_ratings, :course_tags
  end
end
