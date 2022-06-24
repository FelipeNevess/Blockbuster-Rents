class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.integer :release_year, null: false
      t.string :duration, null: false
      t.string :classification, null: false
      t.text :description, null: false

      t.timestamps
    end
  end
end
