class AttendeesController < ApplicationController
  def create
    @attendee = Attendee.new
    @attendee.user = current_user
    @attendee.watch_party_id = params[:watch_party_id]
    redirect_to watch_party_path(params[:watch_party_id]) if @attendee.save!
  end

  def index
    @attendees = Attendee.all
  end

  def show
    @attendee = Attendee.find(params[:id])
  end
end
