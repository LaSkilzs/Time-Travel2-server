class FunFact < ApplicationRecord
  belongs_to :generation

  validates :fact, presence: true
  validates :fact_length, presence: true
end
