# typed: strict

class OrderItem < ApplicationRecord
  belongs_to :order

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
