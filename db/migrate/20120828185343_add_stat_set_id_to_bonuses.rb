class AddStatSetIdToBonuses < ActiveRecord::Migration
  def change
    add_column :bonuses, :stat_set_id, :integer
  end
end
