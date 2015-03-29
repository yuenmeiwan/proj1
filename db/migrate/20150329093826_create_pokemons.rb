class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|

      t.timestamps
    end
  end
end
