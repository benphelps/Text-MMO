class AddFingerIdtoArmor < ActiveRecord::Migration
  def change
    add_column :armors, :finger_id, :integer
  end
end
