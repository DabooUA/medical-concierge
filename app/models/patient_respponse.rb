class PatientResponse < ApplicationRecord
  has_many :responses
  has_many :question_ids, :through :user_id
end
