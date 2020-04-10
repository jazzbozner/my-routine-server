class RoutineSerializer < ActiveModel::Serializer
  attributes :id, :name, :intensity, :description
  has_one :user
end
