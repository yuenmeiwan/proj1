class PokemonController < ApplicationController
	def capture
		@pokemon = Pokemon.find(params[:id])
		@pokemon.update_attribute(:trainer_id, current_trainer)
		redirect_to root_url
	end
end
