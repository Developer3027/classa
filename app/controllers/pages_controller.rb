class PagesController < ApplicationController
  def home
    @on_boarding = OnBoarding.new
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
   def set_onboarding
     @on_boarding = OnBoarding.find(params[:id])
   end
end
