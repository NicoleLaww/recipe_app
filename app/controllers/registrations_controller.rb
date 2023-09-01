class RegistrationsController < ApplicationController

  # Displays form for registration 
  def new
    @user = User.new
  end

  # Saves form 
  def create
    @user = User.new(user_params)
    if @user.save 
      redirect_to login_path
    elsif existing_account
      flash[:alert] = 'Please login.'
      redirect_to login_path
    else
      flash.now[:alert] = 'Registration failed. Please ensure all fields are filled and passwords match.'
      render :new 
    end
  end

end 
