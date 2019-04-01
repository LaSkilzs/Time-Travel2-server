class Helpwanted < ApplicationRecord
  belongs_to :job
  has_many :applications
  has_many :profiles, through: :applications
  
  # enum location: [:central, :northern, :southern, :western, :new_england]

  # validates, :location, presence: true
  # validates, :female, presence: true
  # validates, :housing_offered, presence: true
  # validates, :wage_per_week, presence: true, numericality: true
end
