class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :logged_in?, :current_user

  def current_user
    if logged_in?
      User.find(session[:user_id])
    end
  end

  def logged_in?
    !!session[:user_id]
  end

  def authorize_user
    unless logged_in?
      redirect_to login_path
    end
  end
end
