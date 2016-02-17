class HomeController < ApplicationController

  before_action :authenticate_user!, except: :index

  def index
    @articles = Article.all.order("id DESC")
  end

end
