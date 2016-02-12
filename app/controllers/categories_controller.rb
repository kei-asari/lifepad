class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @c_articles = Article.find(params[:id])
  end
end
