class ClipsController < ApplicationController
  def create
    @clip = Clip.create(create_params)
    redirect_to controller: :article, action: :show
  end

  def destroy
  end

  private
  def create_params
    params.merge(article_id: params[:article_id], user_id: current_user.id)
  end
end
