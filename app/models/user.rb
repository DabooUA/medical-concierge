class User < ApplicationRecord
  has_secure_password
  has_many :doctors
  has_many :prescription, :through => :doctors
end
