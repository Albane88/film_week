class WatchPartiesController < ApplicationController
  def new
    @watch_party = WatchParty.new
  end

  def create
    @watch_party = WatchParty.new(watch_party_params)
    @watch_party.user = current_user
    if @watch_party.save!
      redirect_to watch_party_path(@watch_party)
    else
      render "new"
    end
  end

  def watch_party_params
    params.require(:watch_party).permit(:title, :location, :date, :name, :movie_id)
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
