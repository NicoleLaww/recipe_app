class RegistrationsController < ApplicationController

  # Displays form for registration 
  def new
    @user = User.new
  end

  # Saves form 
  def create
    if existing_account
      redirect_to login_path, alert: 'Invalid credentials. Please login or use a different email.'
    else
      @user = User.new(user_params)
      if @user.save 
        redirect_to login_path, notice: 'User successfully registered.'
      else 
        render :new 
      end
    end
  end 

end
