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

  def show
    @watch_party = WatchParty.find(params[:id])
    @message = Message.new
  end

  def index
    if params[:format].present?
      @watch_parties = current_user.attending_watch_parties
    else
      @watch_parties = WatchParty.all
    end
    @markers = @watch_parties.geocoded.map do |watch_party|
      {
        lat: watch_party.latitude,
        lng: watch_party.longitude,
        info_window: render_to_string(partial: "info_window", locals: { watch_party: watch_party })
      }
    end
  end

  def destroy
    @watch_party = WatchParty.find(params[:id])
    @watch_party.destroy
    redirect_to watch_parties_path
  end

  private

  def watch_party_params
    params.require(:watch_party).permit(:title, :location, :date, :name, :movie_id)
  end

end
