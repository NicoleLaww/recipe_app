class ApplicationController < ActionController::Base

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def existing_account
    @existing_account = User.find_by(email: params[:email])
  end 
  
  helper_method :current_user, :existing_account

  
end
