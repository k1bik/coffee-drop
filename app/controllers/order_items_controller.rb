# typed: strict

class OrderItemsController < ApplicationController
  extend T::Sig

  http_basic_authenticate_with name: ENV.fetch("WEB_NAME", "name"), password: ENV.fetch("WEB_PASSWORD", "password")

  sig { void }
  def index
  end

  sig { void }
  def new
    @order_item = T.let(OrderItem.new, T.nilable(OrderItem))
  end

  sig { void }
  def create
    permitted_params = params.require(:order_item).permit(:name, :description, :price)
    order_item = T.let(OrderItem.new(permitted_params), T.nilable(OrderItem))

    if T.must(order_item).save
      redirect_to order_items_path
    else
      redirect_to new_order_item_path
    end
  end

  sig { void }
  def edit
  end

  sig { void }
  def update
  end

  sig { void }
  def destroy
  end
end
