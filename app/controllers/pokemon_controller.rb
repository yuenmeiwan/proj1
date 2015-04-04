class PokemonController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to root_url
	end

	def damage
		pokemon = Pokemon.find(params[:id])
		pokemon.health -= 10
		pokemon.save
		redirect_to trainer_path(current_trainer)
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create(pokemon_params)
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
		 	redirect_to trainer_path(current_trainer)
		else
			render "new"
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end

end
