class DeviceSerializer < ActiveModel::Serializer
  attributes :id, :name, :commands, :icon
end
