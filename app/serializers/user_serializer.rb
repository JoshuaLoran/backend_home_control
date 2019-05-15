class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :devices
end
