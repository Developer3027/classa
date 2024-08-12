class InquiriesController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  # GET /inquiries or /inquiries.json
  def index
    @inquiries = current_user.inquiries
    if @inquiries.empty?
      redirect_to new_inquiry_path
    end
  end

  # GET /inquiries/1 or /inquiries/1.json
  def show
  end

  # GET /inquiries/new
  def new
    @inquiry = current_user.inquiries.first || Inquiry.new
    if @inquiry.persisted?
      flash[:alert] = "You already have an inquiry. Please edit."
      render :edit
    end
  end

  # GET /inquiries/1/edit
  def edit
    @inquiry = current_user.inquiries.first
  end

  # POST /inquiries or /inquiries.json
  def create
    @inquiry = Inquiry.new(inquiry_params)
    @inquiry.user = current_user

    respond_to do |format|
      if @inquiry.save
        format.html { redirect_to inquiries_path, notice: "Inquiry was successfully created." }
        format.json { render :show, status: :created, location: @inquiry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inquiries/1 or /inquiries/1.json
  def update
    @inquiry = current_user.inquiries.find(params[:id])
    respond_to do |format|
      if @inquiry.update(inquiry_params)
        format.html { redirect_to inquiries_path, notice: "Inquiry was successfully updated." }
        format.json { render :show, status: :ok, location: @inquiry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @inquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inquiries/1 or /inquiries/1.json
  def destroy
    @inquiry.destroy!

    respond_to do |format|
      format.html { redirect_to jobs_url, notice: "Inquiry was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquiry
      @inquiry = Inquiry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def inquiry_params
      params.require(:inquiry).permit(:middle_name,
                                      :current_address,
                                      :current_address_2,
                                      :current_city,
                                      :current_state,
                                      :current_zip,
                                      :current_country,
                                      :veteran,
                                      :military_branch,
                                      :career_status,
                                      :solo_team,
                                      :interest_team,
                                      :common_freight,
                                      :prefered_freight,
                                      :lic_type,
                                      :cdl_experience,
                                      :endorsements,
                                      :moving_violations,
                                      :mv_info,
                                      :preventable_accidents,
                                      :pa_info,
                                      :contact_time,
                                      :contact_method,
                                      :pp_tos)
    end
end
