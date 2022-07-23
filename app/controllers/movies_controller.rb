class MoviesController < ApplicationController
  include OptionsCategories

  before_action :set_movie, only: :show
  before_action :set_movie_category
  before_action :set_movie_popular

  def index
    @movies = Movie.all

    @first_movie = Movie.where.not(slide: nil)
  end

  def search
    @movies = Movie.search(search_params[:q]).where.not("card_image ILIKE '%/ban/%'")
  end

  def movies_catalog; end

  def show; end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def search_params
    params.permit(:q)
  end
end
