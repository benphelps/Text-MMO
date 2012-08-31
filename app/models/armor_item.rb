class ArmorItem < ActiveRecord::Base
  attr_accessible :armor_tier_id, :bonus_id, :enchant_id, :name, :stat_set_id
  
  belongs_to :armor_tier
  belongs_to :enchant
  belongs_to :bonus
  belongs_to :stat_set
  
  def stat
    StatSet.find(stat_set_id)
  end
  
  [:agility, :stamina, :strength, :intellect].each do |stat|
    define_method stat do
      armor_tier.stat.send(stat) + stat_set.send(stat)
    end
  end
  
end