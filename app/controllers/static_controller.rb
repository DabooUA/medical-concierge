class StaticController < ApplicationController
  skip_before_action :verified_patient, only: [:home]

  def home
  end
  
end
