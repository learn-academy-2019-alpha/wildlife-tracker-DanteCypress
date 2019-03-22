class PokemonsController < ApplicationController
    
  def new
    @pokemon =Pokemon.new
  end
    
  def index
    @pokemon =Pokemon.all
  end
    
  def show   
    @pokemon = Pokemon.find(params[:id])
  end   
   
  def create
    @pokemon = Pokemon.new(pokemon_params)
    if @pokemon.save
      redirect_to  pokemons_path
    else
      render action: :new
    end
  end
    
    
  def update
    @pokemon = Pokemon.find(params[:id])
    if @pokemon.update_attributes(pokemon_params)   
      flash[:notice] = 'Pokemon updated!'   
      redirect_to pokemons_path   
    else   
      flash[:error] = 'Failed to edit Pokemon!'   
      render :edit 
    end
  end    
    
  def edit
       @pokemon = Pokemon.find(params[:id])   
  end
  
  def destroy
    @pokemon =Pokemon.destroy(params[:id])  
    if @pokemon.delete   
      flash[:notice] = 'Pokemon deleted!'   
      redirect_to pokemons_path
    else   
      flash[:error] = 'Failed to delete this Pokemon!'   
      render :destroy   
  
    end   
  end
end

private
  def pokemon_params
    params.require(:pokemon).permit(:name,:jpname,:typez)
  end