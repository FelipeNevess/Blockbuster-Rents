class MoviesController < ApplicationController
  before_action :set_movie, only: %i[show edit update destroy]

  def index
    @movies = Movie.all
  end

  def show; end

  def new
    @movie = Movie.new
  end

  def edit; end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movie_url(@movie), notice: 'Filme criado com sucesso.'
    else
      render :new
    end
  end

  def update
    if @movie.update(movie_params)
      redirect_to movie_url(@movie), notice: 'Filme atualizado com sucesso.'
    else
      render :edit
    end
  end

  def destroy
    @movie.destroy

    redirect_to movies_url, notice: 'Filme removido com sucesso.'
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    @movie = nil
    render file: "#{Rails.root}/public/404.html"
  end

  def movie_params
    params.require(:movie).permit(:title, :release_year, :duration, :genre, :classification, :description)
  end
end