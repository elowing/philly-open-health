class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authenticate
    redirect_to signin_url, alert: "Not authenticated" if current_user.nil?
  end

  def signin(user)
    @user = user
    if @user.save
      session[:user_id] = @user.id
    else
      render :new
    end
  end

  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user
end
