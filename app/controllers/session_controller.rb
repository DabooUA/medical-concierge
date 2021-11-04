class SessionController < ApplicationController
  skip_before_action :verified_patient, only: [:new, :create]
  
  def new
    @patient = Patient.new
  end

  def create
    if @patient = Patient.find_by(first_name: params[:first_name], last_name: params[:last_name], username: params[:username])
      session[:patient_id] = @patient.id
      redirect_to patient_path(@patient)
    else
      render 'new'
    end
  end

  def destroy
    session.delete("patient_id")
    redirect_to root_path
  end
end
