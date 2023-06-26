# Pizza-Resturants

# Restaurant Model

The `Restaurant` model represents a restaurant in the system. It has a one-to-many relationship with the `RestaurantPizza` model through which it is associated with multiple pizzas.

## Attributes

- `restaurant_name` (string): The name of the restaurant.
- `address` (text): The address of the restaurant.
- `created_at` (datetime): The timestamp indicating when the restaurant was created.
- `updated_at` (datetime): The timestamp indicating the last update to the restaurant.

## Associations

- `has_many :restaurant_pizzas`: Defines the association between `Restaurant` and `RestaurantPizza` models.
- `has_many :pizzas, through: :restaurant_pizzas`: Establishes a many-to-many relationship with the `Pizza` model.

## Endpoints

The `RestaurantsController` provides the following RESTful endpoints for managing restaurants:

- `GET /restaurants`: Retrieves a list of all restaurants.
- `POST /restaurants`: Creates a new restaurant.
- `GET /restaurants/:id`: Retrieves a specific restaurant by its ID.
- `PATCH /restaurants/:id`: Updates a specific restaurant by its ID.
- `DELETE /restaurants/:id`: Deletes a specific restaurant by its ID.

# Pizza Model

The `Pizza` model represents a pizza in the system. It has a one-to-many relationship with the `RestaurantPizza` model through which it is associated with multiple restaurants.

## Attributes

- `pizza_name` (string): The name of the pizza.
- `pizza_size` (string): The size of the pizza.
- `ingredients` (string): The list of ingredients used in the pizza.
- `created_at` (datetime): The timestamp indicating when the pizza was created.
- `updated_at` (datetime): The timestamp indicating the last update to the pizza.

## Associations

- `has_many :restaurant_pizzas`: Defines the association between `Pizza` and `RestaurantPizza` models.
- `has_many :restaurants, through: :restaurant_pizzas`: Establishes a many-to-many relationship with the `Restaurant` model.

## Endpoints

The `PizzasController` provides the following RESTful endpoints for managing pizzas:

- `GET /pizzas`: Retrieves a list of all pizzas.
- `POST /pizzas`: Creates a new pizza.
- `GET /pizzas/:id`: Retrieves a specific pizza by its ID.
- `PATCH /pizzas/:id`: Updates a specific pizza by its ID.
- `DELETE /pizzas/:id`: Deletes a specific pizza by its ID.

# RestaurantPizza Model

The `RestaurantPizza` model represents the association between a restaurant and a pizza. It serves as a join model between the `Restaurant` and `Pizza` models, allowing many-to-many relationships.

## Attributes

- `price` (integer): The price of the pizza at the associated restaurant.
- `created_at` (datetime): The timestamp indicating when the association was created.
- `updated_at` (datetime): The timestamp indicating the last update to the association.

## Associations

- `belongs_to :restaurant`: Defines the association between `RestaurantPizza` and `Restaurant` models.
- `belongs_to :pizza`: Defines the association between `RestaurantPizza` and `Pizza` models.

## Endpoints

The `RestaurantPizzasController` provides the following RESTful endpoints for managing restaurant-pizza associations:

- `GET /restaurant_pizzas`: Retrieves a list of all restaurant-pizza associations.
- `POST /restaurant_pizzas`: Creates a new restaurant-pizza association.
- `GET /restaurant_pizzas/:id`: Retrieves a specific restaurant-pizza association by its ID.
- `PATCH /restaurant_pizzas/:id`: Updates a specific restaurant-pizza association by its ID.
- `DELETE /resturant_pizzas/:id`: Deletes a specific resturant_pizza by its ID.

