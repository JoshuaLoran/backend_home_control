class DevicesController < ApplicationController

  def create
    @device = Device.create(device_params)
    if @device.valid?
      render json: { device: DeviceSerializer.new(@device)}, status: :created
    else
      render json: { error: 'failed to create device' }, status: :not_acceptable
    end
  end

  def destroy
    @device = Device.find_by(id: device_params[:id])
    @device.destroy
  end

  def index
    @devices = Device.all
    render json: @devices
  end

private

  def device_params
    params.require(:device).permit(:icon, :id, :name, :commands => [])
  end
end
