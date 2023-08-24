class Recipe < ApplicationRecord
  #VALIDATIONS

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

  #QUERIES

  #create recipe
  Recipe.create(
  title: "Vegi Paneer",
  gluten_free: false,
  vegan: false,
  vegetarian: true,
  breakfast: false,
  kosher: false,
  peanut_free: false,
  halal: false,
  dinner: true,
  lunch: true,
  dessert: false,
  appetizer: false,
  photo: "recipe.jpg",
  time: 30,
  number_of_servings: 4,
  instructions: "..."
  country: "India",
  description: "A tasty Indian dish for all to enjoy!",
  user_id: user_id
)

#retrieve recipe based on dietary restrictions 
gluten_free_recipes = Recipe.where(gluten_free: true)
vegan_recipes = Recipe.where(vegan: true)
vegetarian_recipes = Recipe.where(vegetarian: true)
kosher_recipes = Recipe.where(kosher: true)
peanut_free_recipes = Recipe.where(peanut_free: true)
halal_recipes = Recipe.where(halal: true)

#retrieve by meal type
breakfast_recipes = Recipe.where(breakfast: true)
lunch_recipes = Recipe.where(lunch: true)
dinner_recipes = Recipe.where(dinner: true)
appetizer_recipes = Recipe.where(appetizer: true)

#retrive recipe by user
user_recipes = Recipe.where(user_id: user_id)

#retrieve recipe by cooking time
recipes_with_min_time = Recipe.where("time >= ?", min_time)
recipes_with_max_time = Recipe.where("time <= ?", max_time)

#retrive by title
specific_recipe = Recipe.find_by(title: "Vegi Paneer")

#retrive by country
italian_recipes = Recipe.where(country: "India")










end
