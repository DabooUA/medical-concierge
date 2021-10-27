class SessionsController < ApplicationController
  skip_before_action :verified_patient, only: [:new, :create]
  
  def new
    @patient = Patient.new
  end

  def create
    if @patient = Patient.find_by(name: params[:username, :first_name, :last_name])
      session[:patient_id] = @patient.id
      redirect_to patient_path(@patient)
    else
      render 'new'
  end

  def destroy
    session.delete("patient_id")
    redirect_to root_path
  end
end
