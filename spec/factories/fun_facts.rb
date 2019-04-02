require 'faker'

FactoryBot.define do
  factory :fun_fact do
    fact_length { "MyString" }
    fact { Faker::Lorem.sentences }
    generation 
  end
end
