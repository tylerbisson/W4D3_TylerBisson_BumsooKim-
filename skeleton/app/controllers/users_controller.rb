class UsersController < ApplicationController

  def new 
    render :new 
  end

  def create 
    # debugger
    user = User.new(user_params)
    # debugger 
    if user.save 
      redirect_to cats_url
    else 
      render :new 
    end
  end

  private 
  def user_params
    params.require(:user).permit(:user_name, :password, :password_digest, :session_token)
  end
 
end