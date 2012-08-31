class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :name
      t.integer :agility
      t.integer :intellect
      t.integer :stamina
      t.integer :strength

      t.timestamps
    end
  end
end
