class RestaurantPizzaSerializer < ActiveModel::Serializer
  attributes :id, :price, :restaurant, :pizza
  has_one :pizza
  has_one :restaurant
end
