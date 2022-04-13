class SignupSerializer < ActiveModel::Serializer
  has_one :camper
  has_one :activity
end
