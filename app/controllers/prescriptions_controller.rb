class PrescriptionsController < ApplicationController
  
  def show
    @prescription = Prescription.find(params[:id])
  end

  private

  def prescriptions_params
    params.require(:prescription).permit(
      :prescription_name,
      :pharmacy_name,
      :pharmacy_address,
      :prescription_date
    )
  end
  
end
