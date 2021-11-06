class SessionController < ApplicationController
  skip_before_action :verified_user, only: [:new, :create]
  
  def new
    @patient = Patient.new
  end

  def create
    if @patient = Patient.find_by(username: params[:username])
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
