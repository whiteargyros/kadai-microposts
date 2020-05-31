class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    post = Micropost.find(params[:micropost_id])
    current_user.favorite(post)
    flash[:success] = 'ポストをお気に入り登録しました。'
    redirect_to root_url
  end

  def destroy
    post = Micropost.find(params[:micropost_id])
    current_user.unfavorite(post)
    flash[:danger] = 'ポストをお気に入り解除しました。'
    redirect_to root_url
  end
end
