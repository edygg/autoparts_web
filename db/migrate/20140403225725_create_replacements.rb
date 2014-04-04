class CreateReplacements < ActiveRecord::Migration
  def change
    create_table :replacements do |t|
      t.string :name
      t.decimal :sale_price
      t.decimal :purchase_price
      t.integer :units_in_stock

      t.timestamps
    end
  end
end
