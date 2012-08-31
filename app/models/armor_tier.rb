class ArmorTier < ActiveRecord::Base
  attr_accessible :level, :name, :deviation, :stat_set_id, :armor_material_id
  belongs_to :armor_material  
  belongs_to :stat_set
  
  attr_reader :stat
  
  def stat
    StatSet.find(stat_set_id)
  end
end