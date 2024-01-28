class Medication < ApplicationRecord
  has_many :prescription, dependent: :destroy
end
