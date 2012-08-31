class RenameHandIdToHandsId < ActiveRecord::Migration
  def change
    rename_column :armors, :hand_id, :hands_id
  end
end
