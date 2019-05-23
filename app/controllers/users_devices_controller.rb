class UsersDevicesController < ApplicationController

  def create
    @users_device = UsersDevice.create(users_device_params)
    if @users_device.valid?
      render json: { message: 'relationship established'}, status: :created
    else
      render json: { error: 'failed to create the device' }, status: :not_acceptable
    end

  end

private

  def users_device_params
    params.require(:users_device).permit(:user_id, :device_id)
  end

end
