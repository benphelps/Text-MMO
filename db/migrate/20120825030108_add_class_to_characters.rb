class AddClassToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :class_id, :integer
  end
end
