class Device < ApplicationRecord
  has_many :users_devices
  has_many :users, through: :users_devices
end
