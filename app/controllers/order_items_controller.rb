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

    respond_to do |f|
      if T.must(order_item).save
        f.turbo_stream do
          render(
            turbo_stream: [
              turbo_stream.update(:order_items_table, partial: "order_items/order_items_table"),
              turbo_stream.update(
                :new_order_item_form,
                partial: "order_items/form",
                locals: {order_item: OrderItem.new}
              )
            ]
          )
        end
      else
        f.turbo_stream do
          render(
            turbo_stream: turbo_stream.update(
              :new_order_item_form,
              partial: "order_items/form",
              locals: {order_item:}
            )
          )
        end
      end
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

  sig { void }
  def remove_form
    respond_to do |f|
      f.turbo_stream do
        render(turbo_stream: turbo_stream.update(:new_order_item_form, partial: "order_items/new_order_item_button"))
      end
    end
  end
end
