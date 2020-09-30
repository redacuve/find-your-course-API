class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.integer :user_id
      t.integer :course_id
      t.float :rating

      t.timestamps
    end
  end
end
