class Bonus < ActiveRecord::Base
  attr_accessible :name
  has_many :stat_set
end
