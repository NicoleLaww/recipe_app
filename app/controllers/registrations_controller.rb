class RegistrationsController < ApplicationController

  # Displays form for registration 
  def new
    @user = User.new
  end

  # Saves form 
  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to recipes_path, notice: 'User successfully registered.'
    else 
      render :new 
    end 
  end

  # Specify params for user registration 
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :username)
  end
end
