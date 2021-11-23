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
    @markers = @users.geocoded.map do |user|
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window: render_to_string(partial: "info_window", locals: { user: user }),
        }
      end
  end
end
