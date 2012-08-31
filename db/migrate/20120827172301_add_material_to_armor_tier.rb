class AddMaterialToArmorTier < ActiveRecord::Migration
  def change
    add_column :armor_tiers, :material, :integer
  end
end
