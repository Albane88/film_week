class AttendeesController < ApplicationController
  def create
    @attendee = Attendee.new
    @attendee.user = current_user
    @watch_party = WatchParty.find params[:watch_party_id]
    @attendee.watch_party = @watch_party
    @attendee.save!
    redirect_to watch_party_path @watch_party
  end

  def index
    @attendees = Attendee.all
  end

  def show
    @attendee = Attendee.find(params[:id])
  end

  def destroy
    @attendee = Attendee.find(params[:id])
    @attendee.destroy
    redirect_to watch_parties_path format: "chatbox"
  end

end
