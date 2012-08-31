class FixCharacterClassId < ActiveRecord::Migration
  def change
    rename_column :characters, :class_id, :order_id
  end
end
