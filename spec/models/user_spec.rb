require 'rails_helper'

RSpec.describe User, type: :model do
 
  context 'create user' do
    it 'should create a valid factory' do
      expect(FactoryBot.build :user).to be_valid
    end

    it 'expect username to be present' do
      user = FactoryBot.build :user, username: ' '
      expect(user).not_to be_valid
      expect(user.errors[:username]).to include("can't be blank")
    end

    it 'expect username to be unique' do
      user = User.new(username: "happy", email: "hap@me.com")
      user.save
      user2 = user.dup
      expect(user2).not_to be_valid
    end

    it 'expect username to be at least 5 characters' do
      user = FactoryBot.build :user, username: 'joe'
      expect(user).not_to be_valid
    end

    it 'expect email to be present' do
      user = FactoryBot.build :user, email: ' '
      expect(user).not_to be_valid
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'expect email to be unique' do
      user = FactoryBot.build :user
      user.save
      u = user.dup
      expect(u).not_to be_valid
    end

    it 'expect email to be formatted correctly' do
      user = FactoryBot.build :user, email: "l..lycom"
      expect(user).not_to  be_valid
      expect(user.errors[:email]).to include("The format of Email is Invalid")
    end
  end
end
