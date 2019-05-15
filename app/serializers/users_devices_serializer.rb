class UsersDevicesSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :device_id
end
