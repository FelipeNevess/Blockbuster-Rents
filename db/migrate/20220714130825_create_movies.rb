class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :title_producer
      t.string :release_year
      t.text :description
      t.string :background_image
      t.string :background_video
      t.string :card_image

      t.timestamps
    end
  end
end
