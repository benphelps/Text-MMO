class FixArmorIdTypes < ActiveRecord::Migration
  def change 
    change_column :armors, :character_id, :integer
    change_column :armors, :head_id, :integer
    change_column :armors, :shoulder_id, :integer
    change_column :armors, :chest_id, :integer
    change_column :armors, :back_id, :integer
    change_column :armors, :waist_id, :integer
    change_column :armors, :legs_id, :integer
    change_column :armors, :feet_id, :integer
    change_column :armors, :hand_id, :integer
  end
end
