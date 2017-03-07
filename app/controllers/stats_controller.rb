class StatsController < ApplicationController

  def index
    @stats = @character.stats.all
  end

  def show
    @stat = Stat.find(params[:id])
  end

  def new
    @stat = @character.stat.new
  end

  def edit
    @character = Character.find(params[:id])
    @stat = @character.stats.find(params[:id])
  end

  def create
    @character = Character.find(params[:character_id])
    @stat = @character.stats.create(stat_params)
    redirect_to character_path(@character)
  end

  def update
    @character = Character.find(params[:id])
    @stat = @character.stats.find(params[:id])

    if @stat.update(stat_params)
      redirect_to @character
    else
      render 'edit'
    end
  end

  def destroy
    @character = Character.find(params[:character_id])
    @stat = @character.stats.find(params[:id])
    @stat.destroy
    redirect_to character_path(@character)
  end

  private
  def stat_params
    params.require(:stat).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma)
  end
end
