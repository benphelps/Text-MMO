class CreateArmorTiers < ActiveRecord::Migration
  def change
    create_table :armor_tiers do |t|
      t.string :name
      t.integer :level
      t.integer :agility
      t.integer :strength
      t.integer :stamina
      t.integer :intellect
      t.integer :deviation

      t.timestamps
    end
  end
end
