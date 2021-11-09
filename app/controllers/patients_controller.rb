class PatientsController < ApplicationController
  skip_before_action :verified_user, only: [:new, :create, :show, :edit, :update]

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
  end

  def show
    @patient = Patient.find_by(id: params[:id])
  end

  def edit
    @patient = Patient.find_by(id: params[:id])
  end

  def update
    @patient = Patient.find_by(id: params[:id])
      if @patient.update(params.require(:patient).permit(:first_name, :last_name, :email))
        flash[:success] = "Profile successfully update!"
        redirect_to patient_path(@patient)
      else
        flash.now[:error] = "Profile update failed"
        render :edit
      end
    
  end

    private

    def patient_params
      params.require(:patient).permit(
        :first_name,
        :last_name,
        :username,
        :email,
        :password
      )
    end
  
end
