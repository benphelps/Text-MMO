class RemoveAgilityStaminaStrengthIntellectFromArmorTier < ActiveRecord::Migration
  def change
    remove_column :armor_tiers, :agility
    remove_column :armor_tiers, :stamina
    remove_column :armor_tiers, :intellect
    remove_column :armor_tiers, :strength
  end
end
