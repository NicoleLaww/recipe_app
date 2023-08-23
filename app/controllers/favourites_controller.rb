class FavouritesController < ApplicationController
  
  def index 
    @favourites = Favourites.where(user_id: current_user.id)
  end 

  def create
    
  end 

  def destroy

  end 

end

