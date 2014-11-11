class SessionsController < ApplicationController
  def create
    user = User.from_omniauth(env["omniauth.auth"])
    session[:user_id] = user.id
    redirect_to root_url
  end
  def guest
    user = User.create( { provider: 'none',
                uid: 'guest',
                id: 0,          
                name: 'guest' })
    session[:user_id] = user.id                
    session[:times] = 0
    redirect_to root_url
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end
