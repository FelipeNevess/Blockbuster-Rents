class AddSlidesToMovies < ActiveRecord::Migration[6.1]
  def change
    add_column :movies, :slide, :string
  end
end
