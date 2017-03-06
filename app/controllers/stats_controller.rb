class StatsController < ApplicationController

  def create
    character = Character.find(params[:character_id])
    stat = character.stats.create(stat_params)
    redirect_to character_path(character)
  end

  private
  def stat_params
    params.require(:stat).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
  end
end
