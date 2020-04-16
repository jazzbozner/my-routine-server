class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :profile_image, :routines
  # has_many :routines

  def routines
    ActiveModel::SerializableResource.new(self.object.routines,  each_serializer: RoutineSerializer)
  end

end
