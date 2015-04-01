class PokemonController < ApplicationController
	def capture
		pokemon = Pokemon.find(params[:id])
		pokemon.trainer_id = current_trainer.id
		pokemon.save
		redirect_to root_url
	end
end
