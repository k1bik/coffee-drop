class CreateOrderItem < ActiveRecord::Migration[7.1]
  def change
    create_table :order_items do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :price, precision: 10, scale: 2, null: false
      t.timestamps
    end
  end
end
