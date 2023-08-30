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
  validates :gluten_free, :vegan, :vegetarian, :breakfast, :kosher, :peanut_free, :halal, :dinner, :lunch, :dessert, :appetizer, inclusion: [true, false] #ensure they are marked as true or false, can't be null

  #QUERIES

  #create recipe
  def self.create_recipes(title, gluten_free, vegan, vegetarian, breakfast, kosher, peanut_free, halal, dinner, lunch, dessert, appetizer, photo, time, number_of_servings, instructions, country, description, user_id)
    recipe = Recipe.create(
      title: title,
      gluten_free: gluten_free,
      vegan: vegan,
      vegetarian: vegetarian,
      breakfast: breakfast,
      kosher: kosher,
      peanut_free: peanut_free,
      halal: halal,
      dinner: dinner,
      lunch: lunch,
      dessert: dessert,
      appetizer: appetizer,
      photo: photo,
      time: time,
      number_of_servings: number_of_servings,
      instructions: instructions,
      country: country,
      description: description,
      user_id: user_id)
  end

  #retrieve recipe based on dietary restrictions
  def self.retrieve_all_recipes_diet(gluten_free, vegan, vegetarian, kosher, peanut_free, halal)
    gluten_free_recipes = Recipe.where(gluten_free: gluten_free)
    vegan_recipes = Recipe.where(vegan: vegan)
    vegetarian_recipes = Recipe.where(vegetarian: vegetarian)
    kosher_recipes = Recipe.where(kosher: kosher)
    peanut_free_recipes = Recipe.where(peanut_free: peanut_free)
    halal_recipes = Recipe.where(halal: halal)
  end

  #retrieve by meal type
  def self.retrieve_all_recipes_meal
    breakfast_recipes = Recipe.where(breakfast: breakfast)
    lunch_recipes = Recipe.where(lunch: lunch)
    dinner_recipes = Recipe.where(dinner: dinner)
    appetizer_recipes = Recipe.where(appetizer: appetizer)
  end

  #retrive recipe by user
  def self.retrieve_all_user_recipes
    user_recipes = Recipe.where(user_id: user_id)
  end

  #retrive by title
  def self.retrieve_all_recipes_title(title)
    specific_recipe = Recipe.find_by(title: title)
  end

  #retrive by country
  def self.retrieve_all_recipes_country(country)
    country_recipes = Recipe.where(country: country)
  end

end
