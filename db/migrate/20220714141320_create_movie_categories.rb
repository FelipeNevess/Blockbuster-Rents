class CreateMovieCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_categories do |t|
      t.references :category, foreign_key: true
      t.references :movie, foreign_key: true

      t.timestamps
    end
  end
end
