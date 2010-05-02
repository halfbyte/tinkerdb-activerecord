# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  helper_method :logged_in?, :current_user
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  def current_user
    @current_user || User.find_by_id(session[:user_id])
  end
  
  def logged_in?
    !!current_user
  end
  
  def current_user=(user)
    return if user.nil?
    @current_user = user
    session[:user_id] = user.id
  end
  
  def login_required
    return true if logged_in?
    flash[:notice] = "You need to be logged in to use this page"
    redirect_to new_session_url
    false
  end
  
  
end
