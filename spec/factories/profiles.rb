FactoryBot.define do
  factory :profile do
    name { "MyString" }
    age { "family" }
    gender { "male" }
    ethnicity { "MyString" }
    religion { "MyString" }
    marital_status { "single" }
    education { "uneducated" }
    available_for_work { "4/20/19" }
    experience { "laborer" }
    avatar { "MyString" }
    trade { false }
    user
  end
end
