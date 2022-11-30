class PizzaSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients
  has_many :restaurants
  has_many :restaurant_pizzas
end
