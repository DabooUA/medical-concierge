class AddPrescriptionDateToPrescription < ActiveRecord::Migration[6.1]
  def change
    add_column :prescriptions, :prescription_date, :datetime
  end
end
