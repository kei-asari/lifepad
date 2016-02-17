class UsersController < ApplicationController
  before_action :authenticate_user! only: :show

  def show
    @articles = current_user.articles
  end

  def posts_index
    @user = User.find(params[:id])
    @posts = @user.articles
  end
end
