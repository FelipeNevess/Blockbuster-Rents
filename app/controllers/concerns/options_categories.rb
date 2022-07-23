module OptionsCategories
  extend ActiveSupport::Concern

  private

  def set_movie_category
    @categories = Category.where(
      category: ['Ação', 'Aventura', 'Drama', 'Romance', 'Crime',
                 'Suspense', 'Terror', 'Animção', 'Documentários',
                 'Clássicos', 'Comédia', 'Western', 'Ficção Científica']
    ).order(category: :asc)
  end

  def set_movie_popular
    @popularity = Category.where(
      category: %w[
        Policial Mistério Fantasia Biografia
        Infantil História Família
        Independente Musical
        Curta-Metragem Esporte
      ]
    ).order(category: :asc)

    # 'Classicos',
    # 'Comédia',
    # 'Documentarios',
    # 'Drama',
    # 'Ficcao-cientifica',
    # 'Infantil',
    # 'Policial',
    # 'Romance',
    # 'Suspense',
    # 'Terror',
    # 'Faroeste',
    # 'Novidades',
    # 'Em-clima-de-ferias',
    # 'Eu-to-de-ferias',
    # 'Recomendados',
    # 'Cinema-nacional',
    # 'Amizade-animal',
    # 'Animacao',
    # 'Classicos-inesqueciveis-',
    # 'Baseados-em-historias-reais',
    # 'Comedia-romantica',
    # 'Premiados',
    # 'Especial-mazzaropi',
    # 'Especial-ze-do-caixao',
    # 'Para-toda-familia',
    # 'Protagonistas-mulheres',
    # 'Series'
  end
end
