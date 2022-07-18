class FavoritesController < ApplicationController
  include OptionsCategories

  before_action :set_movie_category

  def index
    @favorites = Movie.find(current_user.favorite_ids)
  end
end
