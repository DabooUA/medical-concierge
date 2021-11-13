class Prescription < ApplicationRecord
  belongs_to :doctors
  belongs_to :patients
end
