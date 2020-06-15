class Routine < ApplicationRecord

  belongs_to :user

  has_many :workouts, dependent: :destroy
  has_many :exercises, through: :workouts

  validates :name, uniqueness: true # avoid same name routine data
  
end
