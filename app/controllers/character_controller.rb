class CharacterController < ApplicationController

	def index
		@characters =  current_user.characters.find(:all)
	end
	
	def show
		@character =  current_user.characters.find(params[:id])
		@armor = @character.armor.items
	end
	
	def create
    @order = Order.find(params[:order])
	  @character = Character.new(:name => params[:name], :order => @order)
	end
	
	def update
		active = current_user.characters.where(:active => true).update_all(:active => false)
		character = current_user.characters.find(params[:id])
		character.active = true
		character.save
		redirect_to character_index_path
	end
	
	def edit
	
	end
	
	def destroy
	
	end

end
