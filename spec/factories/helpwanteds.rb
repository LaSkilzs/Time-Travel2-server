FactoryBot.define do
  factory :helpwanted do
    location { "central" }
    image { "MyString" }
    wage_per_week { 1.5 }
    housing_offered { false }
    female { true }
    job 
  end
end
