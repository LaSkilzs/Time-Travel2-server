class User < ApplicationRecord
  has_many :profiles

  validates :username, presence: true,  length: {minimum: 5}
  validates :username, uniqueness: true
  validates :email, presence: true,  uniqueness: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: "The format of Email is Invalid"  }
end

