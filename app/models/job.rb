class Job < ApplicationRecord
  belongs_to :industry
  has_many :help_wanteds
  enum age: [:family, :adult, :youth]
  enum gender: [:female, :male]
  enum travel: [:home, :often, :occassion]
  enum work_environment: [:weathered, :unweathered, :mixed]
  enum experience: [:skilled, :semiskilled, :professional, :laborer]
  enum days_of_week: ['Mon-Fri', 'Mon-Sat', 'Everyday']
  enum education: [:highschool, :college, :some_education, :none]
   
  # validates :name, presence: true
  # validates :education, presence: true
  # validates :experience, presence: true
  # validates :apprenticeship, presence: true
  # validates :work_environment, presence: true
  # validates :age, presence: true
  # validates :gender, presence: true
  # validates :travel, presence: true
  # validates :days_of_week, presence: true
  # validates :job_description, presence: true
  # validates :start_avg_wage_per_week, presence: true
  # validates :end_avg_wage_per_week, presence: true
  # validates :low_hours_of_work, presence: true, numericality: { only_integer: true }
  # validates :high_hours_of_work, presence: true, numericality: { only_integer: true }
  # validates :job_openings, presence: true, numericality: { only_integer: true }
  # validates :job_score, presence: true, numericality: { only_integer: true }
end
