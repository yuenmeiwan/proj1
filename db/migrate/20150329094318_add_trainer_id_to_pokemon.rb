class AddTrainerIdToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :trainer_id, :integer
  end
end
