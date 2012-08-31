class AddStatSetIdToArmorItem < ActiveRecord::Migration
  def change
    add_column :armor_items, :stat_set_id, :integer
  end
end
