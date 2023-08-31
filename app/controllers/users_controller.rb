class UsersController < ApplicationController
  before_action :require_login, only: [:favourites, :show, :edit, :update, :destroy]
  before_action :require_authorization, only: [:favourites, :show, :edit, :update, :destroy]

# Displays all user favourites
  def favourites
      @favourites = Favourite.where(user_id: current_user.id)
      render 'users/favourites/favourites' 
  end 

  # Displays user profile 
  def show 
    @user = User.find(params[:id])
  end 
  
  # Loads edit form
  def edit
    @user = User.find(params[:id])
  end

  # Saves edit form 
  def update
    @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to @user
        # redirect_to @user, notice: 'User was successfully updated.'
      else
        flash.now[:alert] = 'Invalid submission. Please review form again.. Make sure passwords match.'
        render :edit
      end 
 end
  
  # Delete a user
  def destroy 
    @user = User.find(params[:id])
    if @user.destroy
      redirect_to recipes_path
      # redirect_to recipes_path, notice: 'User was successfully deleted.'
    else
      flash[:alert] = 'Something went wrong. Please try again.' 
    end 

  end 

  # Specify params for updating a user
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :username)
  end

end 