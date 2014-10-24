class MatchCostsController < ApplicationController
  before_action :set_match_cost, only: [:show, :edit, :update, :destroy]

  # GET /match_costs
  # GET /match_costs.json
  def index
    @match_costs = MatchCost.all
  end

  # GET /match_costs/1
  # GET /match_costs/1.json
  def show
  end

  # GET /match_costs/new
  def new
    @match_cost = MatchCost.new
  end

  # GET /match_costs/1/edit
  def edit
  end

  # POST /match_costs
  # POST /match_costs.json
  def create
    @match_cost = MatchCost.new(match_cost_params)

    respond_to do |format|
      if @match_cost.save
        format.html { redirect_to @match_cost, notice: 'Match cost was successfully created.' }
        format.json { render action: 'show', status: :created, location: @match_cost }
      else
        format.html { render action: 'new' }
        format.json { render json: @match_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /match_costs/1
  # PATCH/PUT /match_costs/1.json
  def update
    respond_to do |format|
      if @match_cost.update(match_cost_params)
        format.html { redirect_to @match_cost, notice: 'Match cost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @match_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /match_costs/1
  # DELETE /match_costs/1.json
  def destroy
    @match_cost.destroy
    respond_to do |format|
      format.html { redirect_to match_costs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_match_cost
      @match_cost = MatchCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def match_cost_params
      params.require(:match_cost).permit(:cost_code, :mID)
    end
end
