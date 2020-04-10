class WorkoutSerializer < ActiveModel::Serializer
  attributes :id
  has_one :routine
  has_one :exercise
end
