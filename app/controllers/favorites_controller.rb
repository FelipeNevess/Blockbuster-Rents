class FavoritesController < ApplicationController
  include OptionsCategories

  before_action :set_movie_category
  before_action :set_favorites, only: :destroy

  def index
    movie_ids = current_user.favorites.map { |f| f[:movie_id] }

    @favorites = Movie.find(movie_ids)
  end

  def create
    like = Favorite.new(user_id: current_user.id, movie_id: favorite_params[:movie_id])

    if like.save
      render json: { successful: true, id: like.id }
    else
      render json: { successful: false }
    end
  end

  def destroy
    render json: { successful: @favorite.destroy }
  end

  private

  def set_favorites
    @favorite = current_user.favorites.find(params[:id])
  end

  def favorite_params
    params.require(:favorite).permit(:movie_id)
  end
end
