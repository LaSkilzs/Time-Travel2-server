FactoryBot.define do
  factory :application do
    citizenship { false }
    parent_union { false }
    parent_trade { false }
    entreprenuership { false }
    work_with_others { false }
    monotous_task { false }
    work_life_balance { false }
    work_environment { false }
    too_many_hours { false }
    work_location { "central" }
    job_title { "MyString" }
    status { "applied" }
    app_score { 65 }
    profile 
    helpwanted 
  end
end
