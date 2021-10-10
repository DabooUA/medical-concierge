class Questioner < ApplicationRecord
  has_many :questions
  has_many :options
end
