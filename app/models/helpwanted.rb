class Helpwanted < ApplicationRecord
  belongs_to :job
  has_many :applications, dependent: :destroy
  has_many :profiles, through: :applications
  
  validates :location, presence: true
  validates :wage_per_week, presence: true
  validates :female, presence: true
  validates :housing_offered, presence: true

  
end
