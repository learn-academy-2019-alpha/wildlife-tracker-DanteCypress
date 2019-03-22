class CreateSightings < ActiveRecord::Migration[5.2]
  def change
      create_table :sightings do |t|
      t.belongs_to :pokemon, index: true
  
      t.string :latitude
      t.string :longitude
      t.string :date
      t.string :time
      t.timestamps
    end
  end
end
