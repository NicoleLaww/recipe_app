class ChangeFavouritesTable < ActiveRecord::Migration[6.1]
  def change
      # Remove the existing foreign key and column
    remove_reference :favourites, :user, index: true

  end
end
