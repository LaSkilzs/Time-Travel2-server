class Application < ApplicationRecord
  belongs_to :profile
  belongs_to :helpwanted

  enum status: [:applied, :interview, :denied, :hired, :unqualified]
  enum work_location: [:central, :northern, :southern, :western, :new_england]

  # validates :status, presence: true
  # validates :work_location, presence: true
  # validates :app_score, presence: true, numericality: { only_integer: true }
  # validates :job_title, presence: true
  # validates :app_score, presence: true, numericality: { only_integer: true }

end

