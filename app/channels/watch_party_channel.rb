class WatchPartyChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    watch_party = Watch_party.find(params[:id])
    stream_for watch_party
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
