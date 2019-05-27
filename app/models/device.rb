class Device < ApplicationRecord
  has_many :users_devices, dependent: :destroy
  has_many :users, through: :users_devices
end
