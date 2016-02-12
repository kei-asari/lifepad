class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @c_articles = Article.find(params[:cotegory_id])
  end
end
