# typed: strict

class OrderItemsController < ApplicationController
  extend T::Sig

  http_basic_authenticate_with name: ENV.fetch("WEB_NAME", "name"), password: ENV.fetch("WEB_PASSWORD", "password")

  sig { void }
  def index
  end

  sig { void }
  def new
  end

  sig { void }
  def create
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
