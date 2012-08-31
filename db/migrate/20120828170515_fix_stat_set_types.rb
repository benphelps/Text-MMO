class FixStatSetTypes < ActiveRecord::Migration
  def change
    change_column :stat_sets, :agility, :integer
    change_column :stat_sets, :stamina, :integer
    change_column :stat_sets, :intellect, :integer
    change_column :stat_sets, :strength, :integer
  end
end
