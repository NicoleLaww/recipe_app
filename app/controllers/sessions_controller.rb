class SessionsController < ApplicationController
# Display form for login
  def new
    if current_user
      redirect_to @current_user
    else
      render :new
    end 
  end

# Submits login details 
  def create 
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id 
      redirect_to @user
    else
      flash.now[:alert] = 'Invalid credentials.'
      render :new
    end 
  end

# Logout
  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end 

# Specify params for for logging in
  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
  
end
