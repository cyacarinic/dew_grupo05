class AdditionalservicesController < ApplicationController
  before_action :set_additionalservice, only: [:show, :edit, :update, :destroy]

  # GET /additionalservices
  # GET /additionalservices.json
  def index
    @additionalservices = Additionalservice.all
  end

  # GET /additionalservices/1
  # GET /additionalservices/1.json
  def show
  end

  # GET /additionalservices/new
  def new
    @additionalservice = Additionalservice.new
  end

  # GET /additionalservices/1/edit
  def edit
  end

  # POST /additionalservices
  # POST /additionalservices.json
  def create
    @additionalservice = Additionalservice.new(additionalservice_params)

    respond_to do |format|
      if @additionalservice.save
        format.html { redirect_to @additionalservice, notice: 'Additionalservice was successfully created.' }
        format.json { render :show, status: :created, location: @additionalservice }
      else
        format.html { render :new }
        format.json { render json: @additionalservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /additionalservices/1
  # PATCH/PUT /additionalservices/1.json
  def update
    respond_to do |format|
      if @additionalservice.update(additionalservice_params)
        format.html { redirect_to @additionalservice, notice: 'Additionalservice was successfully updated.' }
        format.json { render :show, status: :ok, location: @additionalservice }
      else
        format.html { render :edit }
        format.json { render json: @additionalservice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /additionalservices/1
  # DELETE /additionalservices/1.json
  def destroy
    @additionalservice.destroy
    respond_to do |format|
      format.html { redirect_to additionalservices_url, notice: 'Additionalservice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_additionalservice
      @additionalservice = Additionalservice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def additionalservice_params
      params.require(:additionalservice).permit(:parking_id, :nombre, :descripcion, :precio_hora)
    end
end
