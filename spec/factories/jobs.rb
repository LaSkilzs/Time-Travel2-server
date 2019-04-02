require 'faker'

FactoryBot.define do
  factory :job do
    name { Faker::Job.position }
    experience { "laborer" }
    work_environment { "unweathered" }
    age { "adult" }
    gender { "male" }
    travel { "home" }
    start_avg_wage_per_week { "$8.25" }
    end_avg_wage_per_week { "$10.25" }
    days_of_week { "Everyday" }
    low_hours_of_work { rand(1..15) }
    high_hours_of_work { rand(16..80) }
    job_openings { rand(1..1000) }
    education { "uneducated" }
    job_score { rand(60..100) }
    apprenticeship { "MyString" }
    job_description { "MyString" }
    industry 
  end
end
