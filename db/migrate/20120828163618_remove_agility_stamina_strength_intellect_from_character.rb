class RemoveAgilityStaminaStrengthIntellectFromCharacter < ActiveRecord::Migration
  def change
    remove_column :characters, :agility
    remove_column :characters, :stamina
    remove_column :characters, :intellect
    remove_column :characters, :strength
  end
end
