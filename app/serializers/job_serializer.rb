class API::V1::JobSerializer < ActiveModel::Serializer
  
  attributes :id, :name, :experience, :work_environment, :age, :gender, :travel, :avg_wage, :days_of_week, :education, :job_description, :low_hours_of_work, :high_hours_of_work, :job_openings, :job_score, :apprenticeship, :industry_id

  has_many :helpwanteds
   
  
end
