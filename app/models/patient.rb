class Patient < ApplicationRecord
  has_secure_password
  has_many :doctors
  has_many :prescriptions, through: :doctors
end
