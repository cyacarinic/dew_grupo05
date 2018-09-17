class ParkingtypesController < ApplicationController
  before_action :set_parkingtype, only: [:show, :edit, :update, :destroy]

  # GET /parkingtypes
  # GET /parkingtypes.json
  def index
    @parkingtypes = Parkingtype.all
  end

  # GET /parkingtypes/1
  # GET /parkingtypes/1.json
  def show
  end

  # GET /parkingtypes/new
  def new
    @parkingtype = Parkingtype.new
  end

  # GET /parkingtypes/1/edit
  def edit
  end

  # POST /parkingtypes
  # POST /parkingtypes.json
  def create
    @parkingtype = Parkingtype.new(parkingtype_params)

    respond_to do |format|
      if @parkingtype.save
        format.html { redirect_to @parkingtype, notice: 'Parkingtype was successfully created.' }
        format.json { render :show, status: :created, location: @parkingtype }
      else
        format.html { render :new }
        format.json { render json: @parkingtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parkingtypes/1
  # PATCH/PUT /parkingtypes/1.json
  def update
    respond_to do |format|
      if @parkingtype.update(parkingtype_params)
        format.html { redirect_to @parkingtype, notice: 'Parkingtype was successfully updated.' }
        format.json { render :show, status: :ok, location: @parkingtype }
      else
        format.html { render :edit }
        format.json { render json: @parkingtype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parkingtypes/1
  # DELETE /parkingtypes/1.json
  def destroy
    @parkingtype.destroy
    respond_to do |format|
      format.html { redirect_to parkingtypes_url, notice: 'Parkingtype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parkingtype
      @parkingtype = Parkingtype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parkingtype_params
      params.require(:parkingtype).permit(:nombre)
    end
end
