class Character < ActiveRecord::Base
  attr_accessible :level, :name
  belongs_to :order
  belongs_to :user
  has_one :armor
  
  [:agility, :stamina, :strength, :intellect].each do |stat|
    define_method stat do
      (level.to_f * order.send(stat)).round
    end
  end
  
  def health
    ((level.to_f * 10) + (order.stamina * level.to_f)).round
  end
  
end
