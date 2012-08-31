class CreateArmors < ActiveRecord::Migration
  def change
    create_table :armors do |t|
      t.string :character_id
      t.string :head_id
      t.string :shoulder_id
      t.string :chest_id
      t.string :back_id
      t.string :waist_id
      t.string :legs_id
      t.string :feet_id
      t.string :hand_id

      t.timestamps
    end
  end
end
