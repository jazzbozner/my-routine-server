class Exercise < ApplicationRecord

    has_many :workouts
    has_many :routines, through: :workouts

    accepts_nested_attributes_for :routines

end
