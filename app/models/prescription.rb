class Prescription < ApplicationRecord
  has_many :doctors
  has_many :patinents
end