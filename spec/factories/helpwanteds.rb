FactoryBot.define do
  load "#{Rails.root}/app/models/helpwanted.rb"
  factory :helpwanted do
    location { "central" }
    image { "MyString" }
    wage_per_week { 1.5 }
    housing_offered { false }
    female {false}
    job 
  end
end
