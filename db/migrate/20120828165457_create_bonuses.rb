class CreateBonuses < ActiveRecord::Migration
  def change
    create_table :bonuses do |t|
      t.string :name

      t.timestamps
    end
  end
end
