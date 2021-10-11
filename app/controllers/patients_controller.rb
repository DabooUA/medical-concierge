class PatientsController < ApplicationController

  def new
    @patient = Patient.new
  end

  def create
    if (patient = Patient.create(patient_params))
      session[:patient_id] = patient.id 
      redirect_to patient_path(patient)
    else
      render 'new'
    end

  def show
    @patient = Patient.find_by(:id params[:id])
  end

  private

    def patient_params
      params.require(:patient).permit(
        :first_name,
        :last_name,
        :gender,
        :age,
        :born_on,
        :address,
        :phone,
        :emergency_contact_name,
        :emergency_contact_address,
        :emergency_contact_phone,
        :username,
        :email,
        :password_digest
      )
    end
end
