class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :level
      t.string :health
      t.string :agility
      t.string :intellect
      t.string :stamina
      t.string :strength

      t.timestamps
    end
  end
end
