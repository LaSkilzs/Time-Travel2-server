class Job < ApplicationRecord
  belongs_to :industry
  has_many :help_wanteds
  enum age: {family: "family", adult: "adult", youth: "youth"}
  enum gender: {female: "female", male: "male", both: "both"}
  enum travel: {home: "home", often: "often", occasion: "occassion"}
  enum work_environment: {weathered: "weathered", unweathered: "unweathered", mixed: "mixed"}
  enum experience: {skilled: "skilled", semiskilled: "semiskilled", kindred: "kindred", professional: "professional", laborer: "laborer"}
  enum days_of_week: {Mon_Fri:'Mon-Fri', Mon_Sat: 'Mon-Sat', Everyday: 'Everyday'}
  enum education: {highschool: "highschool", college: "college", some_education: "some_education", uneducated: "uneducated"}
   
  validates :name, presence: true
  validates :education, presence: true
  validates :experience, presence: true
  validates :apprenticeship, presence: true
  validates :work_environment, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :travel, presence: true
  validates :days_of_week, presence: true
  validates :job_description, presence: true
  validates :start_avg_wage_per_week, presence: true
  validates :end_avg_wage_per_week, presence: true
  validates :low_hours_of_work, presence: true, numericality: { only_integer: true }
  validates :high_hours_of_work, presence: true, numericality: { only_integer: true }
  validates :job_openings, presence: true, numericality: { only_integer: true }
  validates :job_score, presence: true, numericality: { only_integer: true }
end
