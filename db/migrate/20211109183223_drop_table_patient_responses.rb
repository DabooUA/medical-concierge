class DropTablePatientResponses < ActiveRecord::Migration[6.1]
  def change
    drop_table :patient_responses
  end
end
