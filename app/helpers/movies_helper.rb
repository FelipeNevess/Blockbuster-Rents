module MoviesHelper
  def search_movie_by_category(category)
    Category.find(category.id).movies.distinct if Category.exists?(category.id)
  end
end
