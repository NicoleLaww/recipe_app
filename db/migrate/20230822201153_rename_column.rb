class RenameColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :recipes, :vegitarian, :vegetarian
  end
end
