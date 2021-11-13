class Patient < ApplicationRecord
  validates :email, uniqueness: true
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}
  validates :first_name, format: { without: /[0-9]/, message: "does not allow numbers"}
  validates :last_name, format: { without: /[0-9]/, message: "does not allow numbers"}
  validates_presence_of :first_name, :last_name, :email, :username, :password
  validates_length_of :first_name, :last_name, :username, maximum: 80

  has_secure_password
  has_many :prescriptions
  has_many :doctors, through: :prescriptions
end
