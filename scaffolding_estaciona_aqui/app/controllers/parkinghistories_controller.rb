class ParkinghistoriesController < ApplicationController
  before_action :set_parkinghistory, only: [:show, :edit, :update, :destroy]

  # GET /parkinghistories
  # GET /parkinghistories.json
  def index
    @parkinghistories = Parkinghistory.all
  end

  # GET /parkinghistories/1
  # GET /parkinghistories/1.json
  def show
  end

  # GET /parkinghistories/new
  def new
    @parkinghistory = Parkinghistory.new
  end

  # GET /parkinghistories/1/edit
  def edit
  end

  # POST /parkinghistories
  # POST /parkinghistories.json
  def create
    @parkinghistory = Parkinghistory.new(parkinghistory_params)

    respond_to do |format|
      if @parkinghistory.save
        format.html { redirect_to @parkinghistory, notice: 'Parkinghistory was successfully created.' }
        format.json { render :show, status: :created, location: @parkinghistory }
      else
        format.html { render :new }
        format.json { render json: @parkinghistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkinghistories/1
  # PATCH/PUT /parkinghistories/1.json
  def update
    respond_to do |format|
      if @parkinghistory.update(parkinghistory_params)
        format.html { redirect_to @parkinghistory, notice: 'Parkinghistory was successfully updated.' }
        format.json { render :show, status: :ok, location: @parkinghistory }
      else
        format.html { render :edit }
        format.json { render json: @parkinghistory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkinghistories/1
  # DELETE /parkinghistories/1.json
  def destroy
    @parkinghistory.destroy
    respond_to do |format|
      format.html { redirect_to parkinghistories_url, notice: 'Parkinghistory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkinghistory
      @parkinghistory = Parkinghistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parkinghistory_params
      params.require(:parkinghistory).permit(:user_id, :parking_id, :fecha_inicio, :fecha_fin, :fecha_registro, :fecha_cancelacion, :motivo_cancelacion)
    end
end
