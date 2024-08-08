class OnBoardingsController < ApplicationController
  before_action :set_on_boarding, only: %i[ show edit update destroy ]

  # GET /on_boardings or /on_boardings.json
  def index
    @on_boardings = OnBoarding.all
  end

  # GET /on_boardings/1 or /on_boardings/1.json
  def show
  end

  # GET /on_boardings/new
  def new
    @on_boarding = OnBoarding.new
  end

  # GET /on_boardings/1/edit
  def edit
  end

  # POST /on_boardings or /on_boardings.json
  def create
    @on_boarding = OnBoarding.new(on_boarding_params)

    respond_to do |format|
      if @on_boarding.save
        format.html { redirect_to root_path, notice: "On boarding was successfully created." }
        format.json { render :show, status: :created, location: @on_boarding }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @on_boarding.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /on_boardings/1 or /on_boardings/1.json
  def update
    respond_to do |format|
      if @on_boarding.update(on_boarding_params)
        format.html { redirect_to on_boarding_url(@on_boarding), notice: "On boarding was successfully updated." }
        format.json { render :show, status: :ok, location: @on_boarding }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @on_boarding.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /on_boardings/1 or /on_boardings/1.json
  def destroy
    @on_boarding.destroy!

    respond_to do |format|
      format.html { redirect_to on_boardings_url, notice: "On boarding was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_on_boarding
      @on_boarding = OnBoarding.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def on_boarding_params
      params.require(:on_boarding).permit(:first_name, :last_name, :phone, :email, :current_address, :current_address_2, :current_city, :current_state, :current_zip, :current_country, :residence, :previous_address, :previous_address_2, :previous_city, :previous_state, :previous_zip, :previous_country, :ssn_sin, :dob, :emergency_contact, :emergency_phone, :license, :drive_experience, :endorsements, :military, :veteran, :moving_violations, :preventable_accidents, :current_status, :solo_team, :interest_team, :prefered_freight, :common_freight, :contact_time, :contact_method, :user_id)
    end
end
