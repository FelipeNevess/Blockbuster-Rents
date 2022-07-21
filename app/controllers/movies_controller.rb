class MoviesController < ApplicationController
  include OptionsCategories

  before_action :set_movie, only: :show
  before_action :set_movie_category

  def index
    @movies = Movie.all

    @first_movie = Movie.first(7)
  end

  def search
    @movies = Movie.search(search_params[:q])
  end

  def movies_catalog; end

  def show; end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    @movie = nil
    render file: "#{Rails.root}/public/404.html"
  end

  def search_params
    params.permit(:q)
  end
end
