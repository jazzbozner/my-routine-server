class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :muscle_target, :description
end
