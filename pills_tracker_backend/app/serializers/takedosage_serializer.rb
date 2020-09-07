class TakedosageSerializer
  include FastJsonapi::ObjectSerializer
  attributes :prescription_id, :datetaken
  belongs_to :prescription
end
