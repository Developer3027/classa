class PagesController < ApplicationController
  def home
    @on_boarding = OnBoarding.new
    @user = current_user.present? ? current_user : User.new
  end

  def register

  end

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

  private
   def set_onboarding
     @on_boarding = OnBoarding.find(params[:id])
   end
end
