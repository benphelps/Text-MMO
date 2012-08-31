class CreateBonus < ActiveRecord::Migration
  def change
    create_table :bonus do |t|
      t.string :strength
      t.string :agility
      t.string :stamina
      t.string :intellect
      t.string :name

      t.timestamps
    end
  end
end
