class DoctorsController < ApplicationController
  skip_before_action :verified_user, only: [:new, :create, :show, :edit, :update]

  def new
    @doctor = Doctor.new
  end

  def edit
    
  end

  def show
  end
end
