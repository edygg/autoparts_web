class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :brand
      t.string :model
      t.integer :year
      t.integer :type_id

      t.timestamps
    end
    add_index :cars, :type_id
  end
end
