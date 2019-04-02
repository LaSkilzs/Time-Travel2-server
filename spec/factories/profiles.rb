FactoryBot.define do
  factory :profile do
    name { Faker::Name.unique.name }
    age { "family" }
    gender { "male" }
    ethnicity { "MyString" }
    religion { "MyString" }
    marital_status { "single" }
    education { "uneducated" }
    available_for_work { rand(1..100).days.from_now}
    experience { "laborer" }
    avatar { "MyString" }
    trade { true }
    user
  end
end
