class CreateResturants < ActiveRecord::Migration[7.0]
  def change
    create_table :resturants do |t|
      t.string :resturant_name
      t.text :address

      t.timestamps
    end
  end
end
