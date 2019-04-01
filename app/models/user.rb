class User < ApplicationRecord
  has_many :profiles

  # validates :username, presence: true, uniqueness: true, length: {minimum: 5}
  # validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }, uniqueness: true 
end

