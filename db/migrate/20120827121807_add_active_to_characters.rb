class AddActiveToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :active, :boolean, default: false
  end
end
