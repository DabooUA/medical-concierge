class StaticController < ApplicationController
  skip_before_action :verified_user, only: [:home, :about]

  def home
  end

  def about
  end
  
end
