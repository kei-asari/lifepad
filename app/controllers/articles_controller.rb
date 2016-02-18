class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: :new

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @categories = Category.all.map do |category|
      [category.name, category.id]
    end
  end

  def create
    @article = Article.create(create_params)
    redirect_to controller: :home, action: :index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def search
  end

  private
  def create_params
    params.require(:article).permit(:title, :content, :thumbnail)
    params.require(:current_user).permit(:current_user_id)
    params.require(:category).permit(:category_id)
  end
end
