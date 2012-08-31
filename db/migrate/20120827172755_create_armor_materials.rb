class CreateArmorMaterials < ActiveRecord::Migration
  def change
    create_table :armor_materials do |t|
      t.string :name

      t.timestamps
    end
  end
end
