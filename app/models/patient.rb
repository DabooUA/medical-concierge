class Patient < ApplicationRecord
  validates :email, format: {with: URI::MailTo::EMAIL_REGEXP}, uniqueness: true, presence: true, on: :create
  validates :first_name, format: { without: /[0-9]/, message: "does not allow numbers"}, presence: true, on: :create
  validates :last_name, format: { without: /[0-9]/, message: "does not allow numbers"}, presence: true, on: :create
  validates_presence_of :password, on: :create
  validates_length_of :first_name, :last_name, :username, minimum: 3, maximum: 20, on: :create

  has_secure_password
  has_many :prescriptions, -> { order(prescription_date: :asc)}
  has_many :doctors, through: :prescriptions  

end
