class Generation < ApplicationRecord
  has_many :fun_facts
  has_many :industries

  # validates :decade, presence: true, numericality: true
  # validates :nickname, presence: true
  # validates :description, presence: true
  # validates :story, presence: true
end
