class CreateRecipes < ActiveRecord::Migration[6.1]
  def change
    create_table :recipes do |t|
      t.string :title
      t.boolean :gluten_free
      t.boolean :vegan
      t.boolean :vegitarian
      t.boolean :breakfast
      t.boolean :kosher
      t.boolean :peanut_free
      t.boolean :halal
      t.boolean :dinner
      t.boolean :lunch
      t.boolean :dessert
      t.boolean :appetizer
      t.string :photo
      t.integer :time
      t.integer :number_of_servings
      t.text :instructions
      t.string :country
      t.text :description
      t.bigint :user_id

      t.timestamps
    end
  end
end
