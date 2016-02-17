class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @articles = @user.articles
  end

  def posts_index
    @user = User.find(params[:id])
    @posts = @user.articles
  end
end
