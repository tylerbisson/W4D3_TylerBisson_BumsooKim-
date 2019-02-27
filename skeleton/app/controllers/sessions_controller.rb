class SessionsController < ApplicationController

  def new 
    render :new 
  end

  def create  
    usr_name = params[:user][:user_name]
    pw = params[:user][:password]
    user = User.find_by_credentials(usr_name,pw)
    session[:session_token] = user.reset_session_token!
    redirect_to cats_url
  end

  def destroy
    render :delete
  end
end