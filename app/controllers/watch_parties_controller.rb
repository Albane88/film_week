class WatchPartiesController < ApplicationController
  def new
    @watch_party = WatchParty.new
  end

  def index
    @watch_parties = WatchParty.all
  end

  def create
    @watch_party = WatchParty.new(params[:watch_party])
    if @watch_party.save
      redirect_to @watch_party
    else
      render "new"
    end
  end

  def show
    @watch_party = WatchParty.find(params[:id])
  end

  def index
    @watch_parties = WatchParty.all
    @markers = @watch_parties.geocoded.map do |watch_party|
      {
          lat: watch_party.latitude,
          lng: watch_party.longitude
      }
      end
  end
end
