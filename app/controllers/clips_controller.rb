class ClipsController < ApplicationController
  def create
    @clip = Clip.create(create_params)
    @article = Article.find(params[:article_id])
    redirect_to article_path(@article)
  end

  def destroy
    clip = Clip.find(params[:id])
    if clip.user_id == current_user.id
      clip.destroy
    end
    redirect_to controller: :home, action: :index
  end

  private
  def create_params
    params.permit(:article_id).merge(user_id: current_user.id)
  end
end
