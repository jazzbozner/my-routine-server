class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :password, :profile_image
  has_many :routines
end
