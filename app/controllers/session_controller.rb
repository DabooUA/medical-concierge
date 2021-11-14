class SessionController < ApplicationController
  skip_before_action :verified_user, only: [:new, :create, :authenticate]
  
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

  def authenticate
    patient = Patient.find_or_create_by(uid: request.env['omniauth.auth'][:uid], provider: request.env['omniauth.auth'][:provider]) do |f|
      f.username = request.env['omniauth.auth'][:info][:first_name]
      f.email = request.env['omniauth.auth'][:info][:email]
      f.password = SecureRandom.hex(15)
    end
    if patient.valid?
      session[:patient_id]= patient.id
      redirect_to patient_path(patient)
    else
      redirect_to signin_path
    end
  end
end
