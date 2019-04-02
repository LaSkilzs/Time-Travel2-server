require 'rails_helper'

RSpec.describe Industry, type: :model do
 context 'create industry' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :industry).to be_valid
    end

    it 'expect name to be present' do
      industry = FactoryBot.build :industry, name: ' '
      expect(industry).not_to be_valid
      expect(industry.errors[:name]).to include("can't be blank")
    end

    it 'expect summary to be present' do
      industry = FactoryBot.build :industry, summary: ' '
      expect(industry).not_to be_valid
      expect(industry.errors[:summary]).to include("can't be blank")
    end

    it 'expect image to be present' do
      industry = FactoryBot.build :industry, image: ' '
      expect(industry).not_to be_valid
      expect(industry.errors[:image]).to include("can't be blank")
     
    end

    it 'expect available_jobs to be present' do
      industry = FactoryBot.build :industry, available_jobs: ' '
      expect(industry).not_to be_valid
      expect(industry.errors[:available_jobs]).to include("can't be blank")
    end
  end
end
