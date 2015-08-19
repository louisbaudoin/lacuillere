class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :stars
      t.string :address
      t.string :category
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
