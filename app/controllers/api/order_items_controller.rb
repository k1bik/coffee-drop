# typed: strict

module Api
  class OrderItemsController < ActionController::API
    extend T::Sig

    sig { void }
    def index
      order_items = OrderItem.pluck(:name, :description, :price, :created_at, :updated_at)

      render json: order_items
    end
  end
end
