class IndustrySerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :image, :available_jobs
end
