class AddCommandsToDevices < ActiveRecord::Migration[5.2]
  def change
    add_column :devices, :commands, :string, array: true, default: []
  end
end
