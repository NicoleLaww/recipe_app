class ApplicationController < ActionController::Base

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def existing_account
    @existing_account = User.find_by(email: params[:email])
  end 
  
  helper_method :current_user, :existing_account

  private 
  # Have to be logged in, if not redirects to login page 
  def require_login
    unless current_user
      redirect_to login_path, alert: 'Please login'
    end 
  end

  # Restricts access to other users' pages 
  def require_authorization
    unless current_user && (current_user.id.to_s == params[:id])
      redirect_to root_path, alert: "You don't have permission to access this page."
    end
  end

  # Specify params for user registration/updating a user  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :username)
  end
  
end
