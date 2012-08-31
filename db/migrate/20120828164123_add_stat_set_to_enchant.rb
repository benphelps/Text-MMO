class AddStatSetToEnchant < ActiveRecord::Migration
  def change
    add_column :enchants, :stat_set_id, :integer
  end
end
