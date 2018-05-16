class WorkshopRegistrationsController < ApplicationController

  def register
    @register = WorkshopRegistration.new
  end

  def create_register
    @register = WorkshopRegistration.new(register_params)
    if @register.save
    redirect_to feedback_path
    end
  end 

  private

  def register_params
    params.require(:register).permit(:name, :email, :contact, :collage_name, :branch, :year, :workshop_title)
  end
end
