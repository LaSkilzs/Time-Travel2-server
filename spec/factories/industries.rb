require 'faker'

FactoryBot.define do
  factory :industry do
    name { "MyString" }
    summary { Faker::Lorem.paragraphs(1) }
    available_jobs { rand(1..70) }
    image { "MyString" }
    generation
  end
end
