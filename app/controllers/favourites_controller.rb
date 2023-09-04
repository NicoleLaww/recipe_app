class FavouritesController < ApplicationController
before_action :require_login, only: [:create, :destroy]
before_action :require_authorization, only: [:create, :destroy]

 # Creates a new favorite
    def create
      @recipe = Recipe.find(params[:recipe_id])
      @existing_favorite = @recipe.favourites.find_by(user_id: current_user.id)

      if @existing_favorite
        flash[:notice] = 'This recipe is already in your favorites.'
      else
        @favourite = @recipe.favourites.build(user_id: current_user.id)

        if @favourite.save
          flash[:notice] = 'Added to favorites!'
          redirect_to favourites_user_path(current_user, @recipe)
        else
          flash[:alert] = 'Failed to add to favorites.'
          redirect_to favourites_user_path(current_user, @recipe)
        end
      end
    end

  # Removes a favourite
  def destroy
    @recipe = Recipe.find(params[:recipe_id])
    @favourite = @recipe.favourites.find_by(user_id: current_user.id)

    if @favourite
      @favourite.destroy
      flash[:notice] = 'Removed from favourites!'
      redirect_to favourites_user_path(current_user, @recipe)
    else
      flash[:alert] = 'Favorite not found!'
      redirect_to favourites_user_path(current_user, @recipe)
    end
  end

  # Security feature to return only permitted parameters
  private 
  
  def favourite_params
    params.require(:favourite).permit(:recipe_id)
  end 

end

