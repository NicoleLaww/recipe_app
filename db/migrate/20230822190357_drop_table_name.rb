class DropTableName < ActiveRecord::Migration[6.1]
  def change
    drop_table :recipes
  end
end
