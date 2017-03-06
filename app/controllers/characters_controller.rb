class CharactersController < ApplicationController

  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if character.save
      redirect to @character
    else
      render 'new'
    end
  end

  private
  def character_params
    params.require(:character).permit(:characterName, :characterRace, :characterClass)
  end

end
