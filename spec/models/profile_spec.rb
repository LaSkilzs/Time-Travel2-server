require 'rails_helper'

RSpec.describe Profile, type: :model do
 context 'create profile' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :profile).to be_valid
    end

    it {should validate_presence_of(:name)}
    it {should validate_presence_of(:gender)}
    it {should validate_presence_of(:marital_status)}
    it {should validate_presence_of(:education)}
    it {should validate_presence_of(:experience)}  
    it {should validate_presence_of(:trade)} 
    it {should validate_presence_of(:available_for_work)} 

  
    

  end
end
