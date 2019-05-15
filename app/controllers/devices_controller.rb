class DevicesController < ApplicationController

  def create
    @device = Device.create(device_params)
    if @device.valid?
      render json: { device: DeviceSerializer.new(@device)}, status: :created
    else
      render json: { error: 'failed to create device' }, status: :not_acceptable
    end

  end

private

  def device_params
    params.require(:user).permit(:name, :commands => [])
  end
end
