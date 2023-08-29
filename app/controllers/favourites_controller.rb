class FavouritesController < ApplicationController
  
  # # Displays all the favourites - MOVED, will delete soon, keeping as a back up
  # def index 
  #   if !current_user
  #     redirect_to login_path, alert: 'Please login!'
  #   else 
  #     @favourites = Favourite.where(user_id: current_user.id)
  #   end 
  # end 

  # Creates new favourite 
  def create
    @favourite = Favourite.new(favourite_params)
    @favourite.user_id = current_user.id

    if !current_user
      redirect_to login_path, alert: 'Please login!'
    elsif Favourite.exists?(user_id: @favourite.user_id, recipe_id: @favourite.recipe_id)
      redirect_back fallback_location: favourites_path, alert: 'You have already favourited this recipe.'
    elsif @favourite.save
      redirect_to favourites_path, notice: 'Favourite was successfully created.'
    else 
      redirect_back fallback_location: favourites_path, alert: 'Could not favourite the recipe.'
    end
  end 

  # Remove a favourite 
  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, notice: 'Favourite was successfully deleted.'
  end 

  # Security feature to return only permitted parameters
  private 
  
  def favourite_params
    params.require(:favourite).permit(:recipe_id)
  end 

end

