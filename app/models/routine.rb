class Routine < ApplicationRecord

  belongs_to :user

  has_many :workouts, dependent: :destroy
  has_many :exercises, through: :workouts
  
end
