class CreatePatientResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :petient_responses do |t|
      t.integer :patient_id
      t.integer :question_id
      t.string :response

      t.timestamps
    end
  end
end
