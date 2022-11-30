class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def create
        signup = RestaurantPizza.create!(restaurant_pizza_params)
        render json: restaurant_pizza_params, status: :created
      end
    
      private
    
      def restaurant_pizza_params
        params.permit(:price, :restaurant, :pizza)
      end

    def render_unprocessable_entity_response(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
