class CreatePizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :pizzas do |t|
      t.string :pizza_name
      t.string :pizza_size
      t.string :ingredients

      t.timestamps
    end
  end
end
