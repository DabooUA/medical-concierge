class Prescription < ApplicationRecord
  belongs_to :doctor
  belongs_to :patients
end
