class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.integer :replacement_id
      t.integer :quantity
      t.decimal :unit_price
      t.decimal :discount

      t.timestamps
    end
    add_index :order_details, :order_id
    add_index :order_details, :replacement_id
  end
end
