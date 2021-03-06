class Industry < ApplicationRecord
  belongs_to :generation
  has_many :jobs

  validates :name, presence: true
  validates :summary, presence: true
  validates :image, presence: true
  validates :available_jobs, presence: true, numericality: { only_integer: true }
end
