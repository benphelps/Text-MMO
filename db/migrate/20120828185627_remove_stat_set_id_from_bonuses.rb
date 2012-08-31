class RemoveStatSetIdFromBonuses < ActiveRecord::Migration
  def change
    remove_column :bonuses, :stat_set_id
  end
end
