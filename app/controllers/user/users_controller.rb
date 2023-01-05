class User::UsersController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @user = current_user
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
    if @user == current_user
      render :edit
    else
      redirect_to user_users_path(current_user)
    end
  end
  def update
    @users = User.find(params[:id]) 
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :name, :introduction)
  end
end
