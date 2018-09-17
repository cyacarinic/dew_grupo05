class UserGendersController < ApplicationController
  before_action :set_user_gender, only: [:show, :edit, :update, :destroy]

  # GET /user_genders
  # GET /user_genders.json
  def index
    @user_genders = UserGender.all
  end

  # GET /user_genders/1
  # GET /user_genders/1.json
  def show
  end

  # GET /user_genders/new
  def new
    @user_gender = UserGender.new
  end

  # GET /user_genders/1/edit
  def edit
  end

  # POST /user_genders
  # POST /user_genders.json
  def create
    @user_gender = UserGender.new(user_gender_params)

    respond_to do |format|
      if @user_gender.save
        format.html { redirect_to @user_gender, notice: 'User gender was successfully created.' }
        format.json { render :show, status: :created, location: @user_gender }
      else
        format.html { render :new }
        format.json { render json: @user_gender.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_genders/1
  # PATCH/PUT /user_genders/1.json
  def update
    respond_to do |format|
      if @user_gender.update(user_gender_params)
        format.html { redirect_to @user_gender, notice: 'User gender was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_gender }
      else
        format.html { render :edit }
        format.json { render json: @user_gender.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_genders/1
  # DELETE /user_genders/1.json
  def destroy
    @user_gender.destroy
    respond_to do |format|
      format.html { redirect_to user_genders_url, notice: 'User gender was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_gender
      @user_gender = UserGender.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_gender_params
      params.require(:user_gender).permit(:nombre)
    end
end
