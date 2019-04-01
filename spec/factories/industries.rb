FactoryBot.define do
  factory :industry do
    name { "MyString" }
    summary { "MyText" }
    available_jobs { 1 }
    generation
  end
end
