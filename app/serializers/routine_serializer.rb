class RoutineSerializer < ActiveModel::Serializer
  attributes :id, :name, :intensity, :description, :exercises
  # has_one :user
  # has_many :exercises

  def excercises
    ActiveModel::SerializableResource.new(self.object.exercises,  each_serializer: ExercisesSerializer)
  end

end
