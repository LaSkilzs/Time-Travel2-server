class HelpwantedSerializer < ActiveModel::Serializer
  attributes :id, :location, :image, :wage_per_week, :housing_offered, :female
end
