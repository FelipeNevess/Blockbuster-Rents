class CreateMovieDirectors < ActiveRecord::Migration[6.1]
  def change
    create_table :movie_directors do |t|
      t.references :movie, null: false, foreign_key: true
      t.references :director, null: false, foreign_key: true

      t.timestamps
    end
  end
end
