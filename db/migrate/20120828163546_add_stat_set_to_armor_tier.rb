class AddStatSetToArmorTier < ActiveRecord::Migration
  def change
    add_column :armor_tiers, :stat_set_id, :integer
  end
end
