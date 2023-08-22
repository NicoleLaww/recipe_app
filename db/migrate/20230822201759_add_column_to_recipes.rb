class AddColumnToRecipes < ActiveRecord::Migration[6.1]
  def change
    add_column :recipes, :ingredients, :text, null: false 
  end
end
