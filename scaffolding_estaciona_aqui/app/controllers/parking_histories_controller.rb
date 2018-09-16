class ParkingHistoriesController < ApplicationController
  before_action :set_parking_history, only: [:show, :edit, :update, :destroy]

  # GET /parking_histories
  # GET /parking_histories.json
  def index
    @parking_histories = ParkingHistory.all
  end

  # GET /parking_histories/1
  # GET /parking_histories/1.json
  def show
  end

  # GET /parking_histories/new
  def new
    @parking_history = ParkingHistory.new
  end

  # GET /parking_histories/1/edit
  def edit
  end

  # POST /parking_histories
  # POST /parking_histories.json
  def create
    @parking_history = ParkingHistory.new(parking_history_params)

    respond_to do |format|
      if @parking_history.save
        format.html { redirect_to @parking_history, notice: 'Parking history was successfully created.' }
        format.json { render :show, status: :created, location: @parking_history }
      else
        format.html { render :new }
        format.json { render json: @parking_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parking_histories/1
  # PATCH/PUT /parking_histories/1.json
  def update
    respond_to do |format|
      if @parking_history.update(parking_history_params)
        format.html { redirect_to @parking_history, notice: 'Parking history was successfully updated.' }
        format.json { render :show, status: :ok, location: @parking_history }
      else
        format.html { render :edit }
        format.json { render json: @parking_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parking_histories/1
  # DELETE /parking_histories/1.json
  def destroy
    @parking_history.destroy
    respond_to do |format|
      format.html { redirect_to parking_histories_url, notice: 'Parking history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parking_history
      @parking_history = ParkingHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parking_history_params
      params.require(:parking_history).permit(:user_id, :parking_id, :fecha_inicio, :fecha_fin, :fecha_registro, :fecha_cancelacion, :motivo_cancelacion)
    end
end
