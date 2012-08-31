class FixOrderStatTypes < ActiveRecord::Migration
  def change 
    change_column :orders, :agility, :float
    change_column :orders, :intellect, :float
    change_column :orders, :stamina, :float
    change_column :orders, :strength, :float
  end
end
