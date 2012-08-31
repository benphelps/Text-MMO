class AddNameToArmorItem < ActiveRecord::Migration
  def change
    add_column :armor_items, :name, :string
  end
end
