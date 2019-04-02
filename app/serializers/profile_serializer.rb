class ProfileSerializer < ActiveModel::Serializer
  attributes :id, :name, :age, :gender, :marital_status, :education, :available_for_work, :experience, :avatar, :ethnicity, :religion, :trade
end
