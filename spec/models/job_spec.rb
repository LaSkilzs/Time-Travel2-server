require 'rails_helper'

RSpec.describe Job, type: :model do
 context 'create job' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :job).to be_valid
    end

    it 'expect name to be present' do
      job = FactoryBot.build :job, name: ' '
      expect(job).not_to be_valid
      expect(job.errors[:name]).to include("can't be blank")
    end

    it 'expect education to be present' do
      job = FactoryBot.build :job, education: ' '
      expect(job).not_to be_valid
      expect(job.errors[:education]).to include("can't be blank")
    end

    it 'expect experience to be present' do
      job = FactoryBot.build :job, experience: ' '
      expect(job).not_to be_valid
      expect(job.errors[:experience]).to include("can't be blank")
     
    end

    it 'expect apprenticeship to be present' do
      job = FactoryBot.build :job, apprenticeship: ' '
      expect(job).not_to be_valid
      expect(job.errors[:apprenticeship]).to include("can't be blank")
    end

    it 'expect work_environment to be present' do
      job = FactoryBot.build :job, work_environment: ' '
      expect(job).not_to be_valid
      expect(job.errors[:work_environment]).to include("can't be blank")
    end

    it 'expect age to be present' do
      job = FactoryBot.build :job, age: ' '
      expect(job).not_to be_valid
      expect(job.errors[:age]).to include("can't be blank")
     
    end

    it 'expect gender to be present' do
      job = FactoryBot.build :job, gender: ' '
      expect(job).not_to be_valid
      expect(job.errors[:gender]).to include("can't be blank")
    end
    
    it 'expect travel to be present' do
      job = FactoryBot.build :job, travel: ' '
      expect(job).not_to be_valid
      expect(job.errors[:travel]).to include("can't be blank")
    end

    it 'expect days_of_week to be present' do
      job = FactoryBot.build :job, days_of_week: ' '
      expect(job).not_to be_valid
      expect(job.errors[:days_of_week]).to include("can't be blank")
     
    end

    it 'expect job_description to be present' do
      job = FactoryBot.build :job, job_description: ' '
      expect(job).not_to be_valid
      expect(job.errors[:job_description]).to include("can't be blank")
    end

    it 'expect start_avg_wage_per_week to be present' do
      job = FactoryBot.build :job, start_avg_wage_per_week: ' '
      expect(job).not_to be_valid
      expect(job.errors[:start_avg_wage_per_week]).to include("can't be blank")
    end

    it 'expect end_avg_wage_per_week to be present' do
      job = FactoryBot.build :job, end_avg_wage_per_week: ' '
      expect(job).not_to be_valid
      expect(job.errors[:end_avg_wage_per_week]).to include("can't be blank")
     
    end

    it 'expect low_hours_of_work to be present' do
      job = FactoryBot.build :job, low_hours_of_work: ' '
      expect(job).not_to be_valid
      expect(job.errors[:low_hours_of_work]).to include("can't be blank")
    end

    it 'expect high_hours_of_work to be present' do
      job = FactoryBot.build :job, high_hours_of_work: ' '
      expect(job).not_to be_valid
      expect(job.errors[:high_hours_of_work]).to include("can't be blank")
    end

    it 'expect job_openings to be present' do
      job = FactoryBot.build :job, job_openings: ' '
      expect(job).not_to be_valid
      expect(job.errors[:job_openings]).to include("can't be blank")
     
    end

    it 'expect job_score to be present' do
      job = FactoryBot.build :job, job_score: ' '
      expect(job).not_to be_valid
      expect(job.errors[:job_score]).to include("can't be blank")
    end

  end
end
