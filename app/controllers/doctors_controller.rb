class DoctorsController < ApplicationController
  skip_before_action :verified_user, only: [:new, :create, :show, :edit, :update]

  def new
    @doctor = Doctor.new
  end

  def create
    if (doctor = Doctor.create(doctor_params))

  def edit
  end

  def show
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
