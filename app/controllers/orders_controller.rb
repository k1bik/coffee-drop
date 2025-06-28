class OrdersController < ApplicationController
  http_basic_authenticate_with name: "test", password: "test"

  def index
  end
end
