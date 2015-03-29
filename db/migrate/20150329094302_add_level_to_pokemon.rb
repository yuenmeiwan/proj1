class AddLevelToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :level, :integer
  end
end
