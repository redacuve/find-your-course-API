class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites, id: false do |t|
      t.integer :user_id
      t.integer :course_id
    end
  end
end
