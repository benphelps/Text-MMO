class CreateArmorItems < ActiveRecord::Migration
  def change
    create_table :armor_items do |t|
      t.string :armor_tier_id
      t.string :enchant_id
      t.string :bonus_id

      t.timestamps
    end
  end
end
