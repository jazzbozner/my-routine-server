class Workout < ApplicationRecord
  belongs_to :routine
  belongs_to :exercise
end
