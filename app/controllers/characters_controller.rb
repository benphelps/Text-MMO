class CharactersController < ApplicationController
	before_filter :authenticate_user!
	
	def index
		@characters =  current_user.characters.find(:all)
	end
	
	def show
		@character =  current_user.characters.find(params[:id])
		@armor = @character.armor.items
	end
	
	def create
	  @character = Character.new(params[:character])
	  current_user.characters << @character
	  redirect_to characters_path
	end
	
	def new
		@character = Character.new
		@orders = Order.all
	end
	
	def update
		active = current_user.characters.where(:active => true).update_all(:active => false)
		character = current_user.characters.find(params[:id])
		character.active = true
		character.save
		redirect_to character
	end
	
	def edit
	
	end
	
	def destroy
	
	end

end
