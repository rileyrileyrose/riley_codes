class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user
  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def must_be_logged_in
    if !@current_user
      flash[:error] = "Silly rabbit, Trix are for kids."
      redirect_to root_path
    end
  end

end
