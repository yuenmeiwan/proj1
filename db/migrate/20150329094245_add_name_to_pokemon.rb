class AddNameToPokemon < ActiveRecord::Migration
  def change
    add_column :pokemons, :name, :string
  end
end
