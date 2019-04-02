require 'rails_helper'

RSpec.describe Helpwanted, type: :model do
  context 'create helpwanted' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :helpwanted).to be_valid
    end

    it { should validate_presence_of(:location)}
    it { should validate_presence_of(:wage_per_week)}
    it { should validate_presence_of(:female)}
    it { should validate_presence_of(:housing_offered)}

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
