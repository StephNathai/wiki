class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    if session[:user_id]
      @user ||= User.find(session[:user_id])
    end
  end

  # def verify_user
  #   redirect_to articles_path unless
  # end

  helper_method :current_user
end
