require 'rails_helper'

RSpec.describe Profile, type: :model do
 context 'create profile' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :profile).to be_valid
    end

    it 'expect name to be present' do
      profile = FactoryBot.build :profile, name: ' '
      expect(profile).not_to be_valid
      expect(profile.errors[:name]).to include("can't be blank")
    end

    it 'expect trade to be present' do
      profile = FactoryBot.build :profile, trade: true
      expect(profile).to be_valid
    end

    it 'expect gender to be present' do
      profile = FactoryBot.build :profile, gender: ' '
      expect(profile).not_to be_valid
      expect(profile.errors[:gender]).to include("can't be blank")
    end

    it 'expect marital_status to be present' do
      profile = FactoryBot.build :profile, marital_status: ' '
      expect(profile).not_to be_valid
      expect(profile.errors[:marital_status]).to include("can't be blank")
    end

    it 'expect education to be present' do
      profile = FactoryBot.build :profile, education: ' '
      expect(profile).not_to be_valid
      expect(profile.errors[:education]).to include("can't be blank")
    end

    it 'expect experience to be present' do
      profile = FactoryBot.build :profile, experience: ' '
      expect(profile).not_to be_valid
      expect(profile.errors[:experience]).to include("can't be blank")
     
    end

    it 'expect available_for_work to be present' do
      profile = FactoryBot.build :profile, available_for_work: true
      expect(profile).to be_valid
      # expect(profile.errors[:available_for_work]).to include("can't be blank")
    end
  end
end
