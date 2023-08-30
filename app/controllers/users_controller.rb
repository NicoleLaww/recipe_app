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
        redirect_to @user, notice: 'User was successfully updated.'
      else
        render :edit
      end 
 end
  
  # Delete a user
  def destroy 
    @user = User.find(params[:id])
    @user.destroy
    redirect_to recipes_path, notice: 'User was successfully deleted.'
  end 

  # Specify params for updating a user
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :username)
  end

  # Have to be logged in, if not redirects to login page 
  def require_login
    unless current_user
      redirect_to login_path, alert: 'Please login'
    end 
  end

  # Restricts access to other users' pages 
  def require_authorization
    unless current_user && current_user.id.to_s == params[:id]
      redirect_to root_path, alert: "You don't have permission to access this page."
    end
  end
end


