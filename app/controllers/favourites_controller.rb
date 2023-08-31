class FavouritesController < ApplicationController
before_action :require_login, only [:create, :destroy]
before_action :require_authorization, only [:create, :destroy]

  # Creates new favourite 
  def create
    @favourite = Favourite.new(favourite_params)
    @favourite.user_id = current_user.id

    if Favourite.exists?(user_id: @favourite.user_id, recipe_id: @favourite.recipe_id)
      flash[:alert] = 'You have already favourited this recipe.'
      redirect_back fallback_location: favourites_path
    elsif @favourite.save
      # flash[:notice] = 'Favourite was successfully created.'
      redirect_to favourites_path
    else 
      flash[:alert] = 'Could not favourite the recipe.'
      redirect_back fallback_location: favourites_path
      
    end
  end 

  # Remove a favourite 
  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    flash[:notice] = 'Favourite was successfully deleted.'
    redirect_to favourites_path
  end 

  # Security feature to return only permitted parameters
  private 
  
  def favourite_params
    params.require(:favourite).permit(:recipe_id)
  end 

end

