module MoviesHelper
  def search_movie_by_category(category)
    Category.find(category).movies.distinct.first(20) if Category.exists?(category)
  end
end
