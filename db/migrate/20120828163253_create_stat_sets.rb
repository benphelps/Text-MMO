class CreateStatSets < ActiveRecord::Migration
  def change
    create_table :stat_sets do |t|
      t.string :agility
      t.string :intellect
      t.string :strength
      t.string :stamina

      t.timestamps
    end
  end
end
