class Profile < ApplicationRecord
  belongs_to :user
  has_many :applications
  has_many :helpwanteds, through: :applications
  enum age: {family: "family", adult: "adult", youth: "youth"}
  enum gender: {female: "female", male: "male"}
  enum marital_status: {single: "single", divorced: "divorced", married: "married", widowed: "widowed"}
  enum education: {highschool: "highschool", college: "college", some_education: "some_education", uneducated: "uneducated"}
  enum experience: {skilled: "skilled", semiskilled: "semiskilled", kindred: "kindred", professional: "professional", laborer: "laborer"}

  validates :name, presence: true, uniqueness: true
  validates :trade, presence: true
  validates :gender, presence: true
  validates :marital_status, presence: true
  validates :education, presence: true
  validates :experience, presence: true
  validates :available_for_work, presence: true
end
