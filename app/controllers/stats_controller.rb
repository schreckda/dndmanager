class StatsController < ApplicationController
  before_action :set_stat, only: [:show, :edit, :update, :destroy]

  # GET /stats
  # GET /stats.json
  def index
    character = Character.find(params[:character_id])
    @stats = character.stats
  end

  # GET /stats/1
  # GET /stats/1.json
  def show
    character = Character.find(params[:character_id])
    @stats = character.stats.find(params[:id])
  end

  # GET /stats/new
  def new
    character = Character.find(params[:character_id])
    @stat = character.stats.build
  end

  # GET /stats/1/edit
  def edit
    character = Character.find(params[:character_id])
    @stats = character.stats.find(params[:id])
  end

  # POST /stats
  # POST /stats.json
  def create
    character = Character.find(params[:character_id])
    @stat = character.stats.create(stat_params)

    respond_to do |format|
      if @stat.save
        format.html { redirect_to character, notice: 'Stat was successfully created.' }
        format.json { render :show, status: :created, location: [@stat.character, @stat] }
      else
        format.html { render :new }
        format.json { render json: @stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stats/1
  # PATCH/PUT /stats/1.json
  def update
    character = Character.find(params[:character_id])
    @stat = character.stats.find(params[:id])

    respond_to do |format|
      if @stat.update(stat_params)
        format.html { redirect_to character, notice: 'Stat was successfully updated.' }
        format.json { render :show, status: :ok, location: [@stat.character, @stat] }
      else
        format.html { render :edit }
        format.json { render json: @stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stats/1
  # DELETE /stats/1.json
  def destroy
    character = Character.find(params[:character_id])
    @stat = character.stats.find(params[:id])
    @stat.destroy

    respond_to do |format|
      format.html { redirect_to character, notice: 'Stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_stat
    @stat = Stat.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def stat_params
    params.require(:stat).permit(:strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :character_id)
  end
end