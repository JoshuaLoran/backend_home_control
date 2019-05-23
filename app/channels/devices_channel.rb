class DevicesChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from 'devices'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def receive(data)
    device = Device.find(data["id"])
    device.update!(commands: data["commands"])
    ActionCable.server.broadcast('devices', data )
  end

end
