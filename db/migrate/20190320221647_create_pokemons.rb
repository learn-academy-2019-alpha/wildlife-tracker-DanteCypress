class CreatePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :jpname
      t.string :typez
      t.timestamps :timestamps
    end
  end
end
