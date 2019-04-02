class IndustrySerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :available_jobs
end
