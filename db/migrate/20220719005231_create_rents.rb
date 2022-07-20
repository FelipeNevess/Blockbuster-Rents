class CreateRents < ActiveRecord::Migration[6.1]
  def change
    create_table :rents do |t|
      t.float :rent_value, default: 4.50
      t.date :rental_date, default: Date.current
      t.references :movie, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
