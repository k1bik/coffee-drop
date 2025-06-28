class CreateOrder < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.datetime :due_date, null: false
      t.timestamps
    end
  end
end
