class AddIdToFavourites < ActiveRecord::Migration[6.0]
  def change
    add_column :favourites, :id, :primary_key
  end
end
