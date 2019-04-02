require 'faker'

FactoryBot.define do
 
  factory :helpwanted do
    location { "central" }
    image { "MyString" }
    wage_per_week { 1.5 }
    housing_offered { "MyString" }
    female {"MyString"}
    job 
  end
end
