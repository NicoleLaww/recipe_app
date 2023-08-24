class UsersController < ApplicationController
  
  # Displays user profile 
  def show 
    if !current_user
      redirect_to login_path, alert: 'Please login.'
    else 
      @user = User.find(params[:id])
    end 
  end 
  
  # Loads edit form
  def edit
    if !current_user
      redirect_to login_path, alert: 'Please login.'
    else 
      @user = User.find(params[:id])
    end 
  end

  # Saves edit form 
  def update
    if !current_user
      redirect_to login_path, alert: 'Please log in to update your profile.'
    else
      @user = User.find(params[:id])
        if @user.update(user_params)
         redirect_to @user, notice: 'User was successfully updated.'
        else
          render :edit
        end 
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
end
