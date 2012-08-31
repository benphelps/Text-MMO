class ArmorMaterial < ActiveRecord::Base
  attr_accessible :name
  has_many :armor_tiers
end
