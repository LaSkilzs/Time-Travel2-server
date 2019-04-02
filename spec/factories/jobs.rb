FactoryBot.define do
  factory :job do
    name { "MyString" }
    experience { "laborer" }
    work_environment { "unweathered" }
    age { "adult" }
    gender { "male" }
    travel { "home" }
    start_avg_wage_per_week { "$8.25" }
    end_avg_wage_per_week { "$10.25" }
    days_of_week { "Everyday" }
    low_hours_of_work { 1 }
    high_hours_of_work { 1 }
    job_openings { 1 }
    education { "uneducated" }
    job_score { 1 }
    apprenticeship { false }
    job_description { "MyString" }
    industry 
  end
end
