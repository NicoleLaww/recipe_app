class Recipe < ApplicationRecord
  belongs_to :user 
  has_many :favourites 
  validates :title, presence: true
  validates :time, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :number_of_servings, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :instructions, presence: true
  validates :country, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
  validates :gluten_free, :vegan, :vegetarian, :breakfast, :kosher, :peanut_free, :halal, :dinner, :lunch, :dessert, :appetizer, presence: true #ensure they are marked as true or false, can't be null
end
