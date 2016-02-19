class ArticlesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

  def show
    @article = Article.find(params[:id])
    @clip = Clip.new
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
    @articles = Article.where('title LIKE(?)', "%#{params[:keyword]}%")
  end

  private
  def create_params
    params.require(:article).permit(:current_user_id, :title, :content, :thumbnail).merge(category_id: params[:article][:category_id], user_id: current_user.id)
  end
end
