class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.integer :zip_code, null: false
      t.string :city, null: false
      t.string :state, null: false
      t.string :street, null: false
      t.integer :number, null: false
      t.string :complement
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
