class SightingsController < ApplicationController
    def new
    @id = params[:id]
    @sighting = Sighting.new
   end
   
  def create
    @sighting = Sighting.new(sighting_params)
    if @sighting.save
      redirect_to pokemons_path
    else
      render action: :new
    end
  end
end

private
  def sighting_params
    params.require(:sighting).permit( :pokemon_id, :latitude, :longitude, :date, :time)
  end