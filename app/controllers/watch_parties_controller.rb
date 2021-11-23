class WatchPartiesController < ApplicationController
  def new
    @watch_party = WatchParty.new
  end

  def index
    @watch_parties = WatchParty.all
  end

  def show
  end

  def index
    @watch_parties = WatchParty.all
    @markers = @watch_parties.geocoded.map do |watch_party|
        {
          lat: watch_party.latitude,
          lng: watch_party.longitude,
          info_window: render_to_string(partial: "info_window", locals: { watch_party: watch_party }),
        }
      end
  end
end
