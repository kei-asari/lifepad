class ArticlesController < ApplicationController
  def show
    @article = Article.find(:id)
  end

  def new
    @article = Article.new
    @categories = Category.all.map do |category|
      [category.name, category.id]
    end
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
