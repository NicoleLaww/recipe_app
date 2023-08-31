class AddColumnsToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :user_id, :bigint
    add_column :reviews, :recipe_id, :bigint
    add_column :reviews, :comment, :string
    add_column :reviews, :rating, :integer
  end
end
