class UsersController < ApplicationController
  
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
