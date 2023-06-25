class AddResturantIdToResturantPizzas < ActiveRecord::Migration[7.0]
  def change
    add_column :resturant_pizzas, :resturant_id, :integer
  end
end
