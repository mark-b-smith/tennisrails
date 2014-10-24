class KittyTransController < ApplicationController
  before_action :set_kitty_tran, only: [:show, :edit, :update, :destroy]

  # GET /kitty_trans
  # GET /kitty_trans.json
  def index
    @kitty_trans = KittyTran.all
  end

  # GET /kitty_trans/1
  # GET /kitty_trans/1.json
  def show
  end

  # GET /kitty_trans/new
  def new
    @kitty_tran = KittyTran.new
  end

  # GET /kitty_trans/1/edit
  def edit
  end

  # POST /kitty_trans
  # POST /kitty_trans.json
  def create
    @kitty_tran = KittyTran.new(kitty_tran_params)

    respond_to do |format|
      if @kitty_tran.save
        format.html { redirect_to @kitty_tran, notice: 'Kitty tran was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kitty_tran }
      else
        format.html { render action: 'new' }
        format.json { render json: @kitty_tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kitty_trans/1
  # PATCH/PUT /kitty_trans/1.json
  def update
    respond_to do |format|
      if @kitty_tran.update(kitty_tran_params)
        format.html { redirect_to @kitty_tran, notice: 'Kitty tran was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kitty_tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kitty_trans/1
  # DELETE /kitty_trans/1.json
  def destroy
    @kitty_tran.destroy
    respond_to do |format|
      format.html { redirect_to kitty_trans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kitty_tran
      @kitty_tran = KittyTran.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kitty_tran_params
      params.require(:kitty_tran).permit(:pID, :amount, :credit, :mID)
    end
end
