class AddUserIdToUsersDevices < ActiveRecord::Migration[5.2]
  def change
    add_column :users_devices, :user_id, :integer
    add_column :users_devices, :device_id, :integer
  end
end
