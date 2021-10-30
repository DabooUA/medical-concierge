class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :verified_patient
  helper_method :current_user

  private
    def verified_user
      redirect_to '/' unless user_is_authenticated
    end

    def user_is_authenticated
      !!current_user
    end

    def current_user
      Patient.find_by(id: session[:patient_id])
    end
end
