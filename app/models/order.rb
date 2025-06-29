# typed: strict

class Order < ApplicationRecord
  validates :due_date, presence: true
end
