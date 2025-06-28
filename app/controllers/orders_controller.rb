# typed: strict

class OrdersController < ApplicationController
  extend T::Sig

  http_basic_authenticate_with name: ENV.fetch("WEB_NAME", "name"), password: ENV.fetch("WEB_PASSWORD", "password")

  sig { void }
  def index
  end
end
