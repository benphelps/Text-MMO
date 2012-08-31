class RemoveAgilityStaminaStrengthIntellectFromEnchant < ActiveRecord::Migration
  def change
    remove_column :enchants, :agility
    remove_column :enchants, :stamina
    remove_column :enchants, :intellect
    remove_column :enchants, :strength
  end
end
