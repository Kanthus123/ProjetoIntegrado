class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= User2.find(session[:user2_id]) if session[:user2_id]
  end
end
