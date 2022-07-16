module MoviesHelper
  def search_movie_by_category(category)
    Category.find(category).movies.distinct if Category.exists?(category)
  end
end
