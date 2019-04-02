class JobSerializer < ActiveModel::Serializer
  attributes :id, :name, :experience, :work_environment, :age, :gender, :travel, :start_avg_wage_per_week, :end_avg_wage_per_week, :days_of_week, :education, :job_description, :low_hours_of_work, :high_hours_of_work, :job_openings, :job_score, :apprenticeship
end
