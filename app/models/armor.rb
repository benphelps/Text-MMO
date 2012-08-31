class Armor < ActiveRecord::Base
  attr_accessible :back_id, :character_id, :chest_id, :feet_id, :hands_id, :head_id, :legs_id, :shoulder_id, :waist_id, :finger_id
  belongs_to :character

  [:back, :chest, :feet, :hands, :head, :legs, :shoulder, :waist, :finger].each do |part|
    belongs_to part, :class_name => 'ArmorItem'
  end

  def items
    [back, chest, feet, hands, head, legs, shoulder, waist, finger]    
  end

end
