# typed: strict

class Order < ApplicationRecord
  has_many :items, class_name: "OrderItem"

  validates :due_date, presence: true
end
