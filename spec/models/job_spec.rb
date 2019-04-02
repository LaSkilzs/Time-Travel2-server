require 'rails_helper'

RSpec.describe Job, type: :model do
 context 'create job' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :job).to be_valid
    end

     it {should validate_presence_of(:apprenticeship)}
    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:education)}
    it {should validate_presence_of(:experience)}
    it {should validate_presence_of(:work_environment)}
    it {should validate_presence_of(:age)}
    it {should validate_presence_of(:gender)}
    it {should validate_presence_of(:travel)}
    it {should validate_presence_of(:job_description)}
    it {should validate_presence_of(:days_of_week)}
    it {should validate_presence_of(:start_avg_wage_per_week)}
    it {should validate_presence_of(:end_avg_wage_per_week)}
    it {should validate_presence_of(:low_hours_of_work)}
    it {should validate_presence_of(:high_hours_of_work)}
    it {should validate_presence_of(:job_openings)}
    it {should validate_presence_of(:job_score)}

  end
end
