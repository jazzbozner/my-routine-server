class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :routine_id, :exercise_id, :exercise_name, :reps, :sets, :weight
  has_one :exercise

end
