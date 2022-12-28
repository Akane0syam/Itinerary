class User::UsersController < ApplicationController
  def show
    @users = User.find(params[:id])
    @user = current_user
    #@post_images = @user.post_images.page(params[:page])
  end

  def edit
    @users = User.find(params[:id])
  end
  def update
    @users = User.find(params[:id]) 
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end
end
