class Category < ApplicationRecord
  has_many :movie_categories
  has_many :movies, through: :movie_categories

  def category_by(category)
    case category
    when 'Western' then 'Filmes de Bang Bang!'
    when 'Infantil' then 'EU TÔ DE FÉRIAS!'
    else
      category
    end
  end
end
