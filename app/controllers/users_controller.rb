class UsersController < ApplicationController
  # index action
  def index
    @users = User.all
  end

  # show action
  def show
    @user = User.find params[:user]
  end

  # create action
  def create
    @user = User.create params[:User]
    redirect_to new_post_path
  end
#show action
  def new
    @user = User.new
  end

  # edit action
  def edit
    @user = User.find params[:id]
  end

  # update action
  def update
    @user = User.find params[:id]
    @user.update params[:user]
    redirect_to edit_user_path
  end

  # destroy action
  def destroy
    @user = User.find params[:id]
    @user.destroy
    redirect_to users_path
  end
end
