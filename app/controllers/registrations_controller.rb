class RegistrationsController < ApplicationController

  # Displays form for registration 
  def new
    @user = User.new
  end

  # # Saves form 
  # def create
  #   if existing_account
  #     redirect_to login_path, alert: 'Invalid credentials. Please login or use a different email.'
  #   else
  #     @user = User.new(user_params)
  #     if @user.save 
  #       redirect_to login_path, notice: 'User successfully registered.'
  #     else 
  #       render :new 
  #     end
  #   end
  # end 

  def create
    #Not hitting will have to fix 
    if existing_account
      flash[:alert] = 'Invalid credentials. Please login or use a different email.'
      redirect_to login_path
    else
      @user = User.new(user_params)
      if @user.save 
        flash[:notice] = 'User successfully registered.'
        redirect_to login_path
      elsif  
        flash.now[:alert] = 'Registration failed. Please correct errors'
        render :new 
      end
    end
  end

end
