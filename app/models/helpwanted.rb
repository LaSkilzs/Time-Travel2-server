class Helpwanted < ApplicationRecord
  belongs_to :job
  has_many :applications
  has_many :profiles, through: :applications
  
  validates :location, presence: true
  validates :wage_per_week, presence: true
  validates :female, presence: false
  validates :housing_offered, presence: false
  
end
