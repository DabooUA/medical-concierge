class CreatePrescriptions < ActiveRecord::Migration[6.1]
  def change
    create_table :prescriptions do |t|
      t.integer :doctor_id
      t.string :prescription_name
      t.string :pharmacy_name
      t.string :pharmacy_address
      t.integer :patient_id
      t.datetime :prescription_date

      t.timestamps
    end
  end
end
