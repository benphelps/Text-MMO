class Enchant < ActiveRecord::Base
  attr_accessible :name, :stat_set
  belongs_to :stat_set
end
