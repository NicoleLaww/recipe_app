class Favourite < ApplicationRecord
  #VALIDATIONS

  belongs_to :user
  belongs_to :recipe
  validates :user_id, presence: true
  validates :recipe_id, presence: true

  #QUERIES

  #creates favourite record
  def self.create_fav_recipe
    Favourite.create(user_id: user_id, recipe_id: recipe_id)
  end

  #retrieve all favourites for user
  def self.retrieve_all_recipes
    user_favourites = Favourite.for_user(user_id)
  end

end
