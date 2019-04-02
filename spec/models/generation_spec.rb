require 'rails_helper'

RSpec.describe Generation, type: :model do
 context 'create generation' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :generation).to be_valid
    end

    it 'expect decade to be present' do
      generation = FactoryBot.build :generation, decade: ' '
      expect(generation).not_to be_valid
      expect(generation.errors[:decade]).to include("can't be blank")
    end

    it 'expect nickname to be present' do
      generation = FactoryBot.build :generation, nickname: ' '
      expect(generation).not_to be_valid
      expect(generation.errors[:nickname]).to include("can't be blank")
    end

    it 'expect description to be present' do
      generation = FactoryBot.build :generation, description: ' '
      expect(generation).not_to be_valid
      expect(generation.errors[:description]).to include("can't be blank")
    end

    it 'expect story to be present' do
      generation = FactoryBot.build :generation, story: ' '
      expect(generation).not_to be_valid
      expect(generation.errors[:story]).to include("can't be blank")
    end
  end
end
