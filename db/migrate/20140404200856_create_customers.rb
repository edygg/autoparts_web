class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers, id: false do |t|
      t.string :identity
      t.string :name
      t.integer :age
      t.string :gender
      t.integer :mobile
      t.string :email
      t.text :address

      t.timestamps
    end
    execute "ALTER TABLE customers ADD PRIMARY KEY (identity);"
  end
end
