require 'faker'


FactoryBot.define do
  factory :user do
    username { Faker::Internet.username(5) }
    email { Faker::Internet.email }
  end
end
