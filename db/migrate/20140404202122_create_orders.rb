class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :customer_id
      t.integer :store

      t.timestamps
    end
    add_index :orders, :customer_id
  end
end
