require 'rails_helper'

RSpec.describe FunFact, type: :model do
  context 'create funfact' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :fun_fact).to be_valid
    end

    it 'expect fact to be present' do
      fun_fact = FactoryBot.build :fun_fact, fact: ' '
      expect(fun_fact).not_to be_valid
      expect(fun_fact.errors[:fact]).to include("can't be blank")
    end

    it 'expect fact_length to be present' do
      fun_fact = FactoryBot.build :fun_fact, fact_length: ' '
      expect(fun_fact).not_to be_valid
      expect(fun_fact.errors[:fact_length]).to include("can't be blank")
    end
  end
end
