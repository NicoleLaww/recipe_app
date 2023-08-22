class CreateFavourites < ActiveRecord::Migration[6.1]
  def change
    create_table :favourites do |t|
      t.bigint :user_id
      t.bigint :recipe_id

      t.timestamps
    end
  end
end
