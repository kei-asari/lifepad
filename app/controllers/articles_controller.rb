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
    Article.create(create_params)
    redirect_to controller: :products, action: :index
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def create_params
    params.require(:article).permit(:current_user_id, :title, :contents, :thumbnail).merge(category_id: params[:category_id])
  end
end
