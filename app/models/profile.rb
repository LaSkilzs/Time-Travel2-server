class Profile < ApplicationRecord
  belongs_to :user
  has_many :applications
  has_many :help_wanteds, through: :applications
  enum age: [:family, :adult, :youth]
  enum gender: [:female, :male]
  enum marital_status: [:single, :divorced, :married, :widowed]
  enum education: [:highschool, :college, :some_education, :none]
  enum experience: [:skilled, :semiskilled, :professional, :laborer]

  # validates, :name, presence: true, uniqueness: true
  # validates, :trade, presence: true
  # validates, :gender, presence: true
  # validates, :marital_status, presence: true
  # validates, :education, presence: true
  # validates, :experience, presence: true
  # validates, :available_for_work, presence: true
end
