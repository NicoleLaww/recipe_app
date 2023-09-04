class ChangeTableBack < ActiveRecord::Migration[6.1]
  def change
    add_reference :favourites, :user, index: true

  end
end
