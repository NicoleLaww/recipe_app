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
      flash[:alert] = 'Please login'
      redirect_to login_path
    end 
  end

  # Restricts access to other users' pages 
  def require_authorization
    unless current_user && (current_user.id.to_s == params[:id])
      flash[:alert] = "You don't have permission to access this page."
      redirect_to root_path
    end
  end

  # Specify params for user registration/updating a user  
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :username)
  end
  
end
