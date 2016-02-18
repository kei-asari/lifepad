class UsersController < ApplicationController

  def show
    @clips = current_user.cliped_articles
  end

  def posts_index
    @articles = current_user.articles
  end
end
