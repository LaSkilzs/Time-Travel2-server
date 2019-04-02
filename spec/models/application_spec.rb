require 'rails_helper'

RSpec.describe Application, type: :model do
  context 'test application validations' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :application).to be_valid
    end

    it 'expect status to be present' do
      application = FactoryBot.build :application, status: ' '
      expect(application).not_to be_valid
      expect(application.errors[:status]).to include("can't be blank")
    end

    it 'expect work_location to be present' do
      application = FactoryBot.build :application, work_location: ' '
      expect(application).not_to be_valid
      expect(application.errors[:work_location]).to include("can't be blank")
    end
    
    it 'expect app_score to be present' do
      application = FactoryBot.build :application, app_score: ' '
      expect(application).not_to be_valid
      expect(application.errors[:app_score]).to include("can't be blank")
    end

    it 'expect job_title to be present' do
      application = FactoryBot.build :application, job_title: ' '
      expect(application).not_to be_valid
      expect(application.errors[:job_title]).to include("can't be blank")
    end 
  end
   context 'test application associations' do
      it {should belong_to(:profile)}
      it {should belong_to(:helpwanted)}
  end
end
