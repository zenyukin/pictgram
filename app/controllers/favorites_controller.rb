class FavoritesController < ApplicationController
  
  def index
    @favorite_topics = current_user.favorite_topics
  end
  
  def create
    favorite = Favorite.new(user_id: current_user.id, topic_id: params[:topic_id])
    
    if favorite.save
      redirect_to topics_path, success:"お気に入りに登録しました"
    else
      redirect_to topics_path, success:"お気に入りに登録失敗しました"
    end
    
  end
  
  def destroy
    @favorite = Favorite.find_by(user_id: current_user.id, topic_id: params[:topic_id])
    @favorite.destroy
    redirect_to topics_path, success: 'いいねを取り消しました'
  end
end
