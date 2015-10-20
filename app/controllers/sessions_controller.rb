class SessionsController < ApplicationController
   
  def new 
  	@user=User.where(email: params[:email]).first
  		if @user && @user.password == params[:password]
  			session[:user_id] = @user.id

  end

  def create
  	@user=User.where(email: params[:email]).first
  		if @user && @user.password == params[:password]
  			session[:user_id] = @user.id

  end

  def destroy
  	session[:user_id] = nil
  	redirect_to home_path
  end
end
end
end
