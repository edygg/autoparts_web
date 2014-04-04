class CreateCarsReplacements < ActiveRecord::Migration
  def change
    create_table :cars_replacements do |t|
      t.belongs_to :car
      t.belongs_to :replacement
    end
    add_index :cars_replacements, [:car_id,:replacement_id], unique: true, name: "cars_replacements"
  end
end
