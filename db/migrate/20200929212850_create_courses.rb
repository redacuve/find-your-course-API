class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.text :name
      t.text :description
      t.float :price
      t.string :image

      t.timestamps
    end
  end
end
