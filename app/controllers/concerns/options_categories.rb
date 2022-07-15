module OptionsCategories
  extend ActiveSupport::Concern

  private

  def set_movie_category
    @categories = Category.where(
      category: %w[
        Ação Aventura Drama Romance Crime
        Suspense Terror Animção Documentários
      ]
    )
  end
end
