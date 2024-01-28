class PatientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :dob, :doctor, :prescription
  belongs_to :doctor
  has_many :prescription
end
