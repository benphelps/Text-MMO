class RemoveAgilityStaminaStrengthIntellectFromBonus < ActiveRecord::Migration
  def change
    remove_column :bonus, :agility
    remove_column :bonus, :stamina
    remove_column :bonus, :intellect
    remove_column :bonus, :strength
  end
end
