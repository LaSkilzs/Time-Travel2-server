require 'faker'

FactoryBot.define do
 
  factory :helpwanted do
    location { Faker::Address.state }
    image { "MyString" }
    wage_per_week { rand(3..9) }
    housing_offered { "MyString" }
    female {"MyString"}
    job 
  end
end
