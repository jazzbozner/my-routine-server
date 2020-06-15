class Routine < ApplicationRecord

  belongs_to :user

  has_many :workouts, dependent: :destroy
  has_many :exercises, through: :workouts

  accepts_nested_attributes_for :exercises

  validates :name, uniqueness: true # avoid same name routine data
  
end
