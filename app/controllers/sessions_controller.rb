class SessionsController < ApplicationController
  def create
    user2 = User2.from_omniauth(request.env["omniauth.auth"])
    session[:user2_id] = user2.id
    redirect_to '/ideas'
  end

  def destroy
    session[:user2_id] = nil
    redirect_to root_path
  end
end
