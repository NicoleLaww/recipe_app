class Favourite < ApplicationRecord
  #VALIDATIONS

  belongs_to :user
  belongs_to :recipe
  validates :user_id, presence: true
  validates :recipe_id, presence: true

  #QUERIES

  #creates favourite record
  Favourite.create(user_id: user_id, recipe_id: recipe_id)
  #retrieve all favourites for user
  user_favourites = Favourite.for_user(user_id)
  #retrieve all users who have favourited said recipe
  users_who_favourited_recipe = User.joins(:favourites).where(favourites: { recipe_id: recipe_id })

 


end
