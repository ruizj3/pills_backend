class MedicationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :priceperpill, :prescription
  has_many :prescription
end
