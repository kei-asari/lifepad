class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @clips = @user.cliped_articles.uniq
  end

  def posts_index
    @articles = current_user.articles
  end
end
