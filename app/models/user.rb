class User < ApplicationRecord
  has_secure_password
  has_many :users_devices
  has_many :devices, through: :users_devices
  validates :username, uniqueness: { case_sensitive: false }
end
