class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end
  def guest
    user = User.find(0)
    session[:user_id] = user.id                
    session["1"] = 0
    session["2"] = 0
    redirect_to root_url
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
