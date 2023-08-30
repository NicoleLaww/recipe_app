class SessionsController < ApplicationController
# Display form for login
  def new
  end

# Submits login details 
  def create 
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      session[:user_id] = @user.id 
      redirect_to @user, notice: 'Successfully login.' 
    else
      render :new, alert: 'Invalid credentials.'
    end 
  end

# Logout
  def destroy
    session.delete(:user_id)
    redirect_to login_path, notice: 'Successfully logged out.'
  end 

# Specify params for for logging in
  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
  
end
