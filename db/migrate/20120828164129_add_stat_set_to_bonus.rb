class AddStatSetToBonus < ActiveRecord::Migration
  def change
    add_column :bonus, :stat_set_id, :integer
  end
end
