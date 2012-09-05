class ArmorsController < ApplicationController
	def index
		@armorTier = ArmorTier.offset(rand(ArmorTier.count)).first
	end
end
