class FixArmorTierMaterial < ActiveRecord::Migration
  def change
    rename_column :armor_tiers, :material, :armor_material_id
  end
end
