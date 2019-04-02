require 'rails_helper'

RSpec.describe Helpwanted, type: :model do
  context 'create helpwanted' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :helpwanted).to be_valid
    end

    it 'expect location to be present' do
      helpwanted = FactoryBot.build :helpwanted, location: ' '
      expect(helpwanted).not_to be_valid
      expect(helpwanted.errors[:location]).to include("can't be blank")
    end

    it 'expect wage_per_week to be present' do
      helpwanted = FactoryBot.build :helpwanted, wage_per_week: ''
      expect(helpwanted).not_to be_valid
      expect(helpwanted.errors[:wage_per_week]).to include("can't be blank")
    end

    it 'female to be present' do
      helpwanted = FactoryBot.build :helpwanted, female: true
      expect(helpwanted).to be_valid
    end
    
    it 'expect housing_offered to be present' do
      helpwanted = FactoryBot.build :helpwanted, housing_offered: true
      expect(helpwanted).to be_valid
    end


  end
end
