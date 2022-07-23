module MoviesHelper
  def search_movie_by_category(category)
    movies = Category.find(category).movies

    movies.where.not("card_image ILIKE '%/ban/%'").order(title: :desc, description: :desc)
  end
end
