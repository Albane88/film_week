class AttendeesController < ApplicationController
  def create
    @attendee = Attendee.new
    @attendee.user = current_user
    @watch_party = WatchParty.find params[:watch_party_id]
    @attendee.watch_party = @watch_party
    @attendee.save!
    redirect_to watch_party_path @watch_party
  end

  private


end
