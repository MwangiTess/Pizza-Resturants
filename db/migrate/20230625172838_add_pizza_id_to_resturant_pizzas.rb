class AddPizzaIdToResturantPizzas < ActiveRecord::Migration[7.0]
  def change
    add_column :resturant_pizzas, :pizza_id, :integer
  end
end
