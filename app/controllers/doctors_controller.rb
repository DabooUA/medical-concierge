class DoctorsController < ApplicationController
  
  def show
    @doctor = Doctor.find_by(id: params[:id])
  end

  private

  def doctor_params
    params.require(:doctor).permit(
      :first_name,
      :last_name,
      :title,
      :hospital_name,
      :address
    )
  end

end
