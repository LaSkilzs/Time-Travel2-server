require 'faker'

FactoryBot.define do
  factory :generation do
    nickname { Faker::Lorem.word }
    description { Faker::Lorem.paragraph }
    story { Faker::Lorem.paragraph }
    decade { rand(1900..1950) }
  end
end
