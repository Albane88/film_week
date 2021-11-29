class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new
    @message = Message.new
  end

  def create
    @watch_party = WatchParty.find(params[:watch_party_id])
    @message = Message.new(message_params)
    @message.attendee = current_user.attendees.find_by(watch_party: @watch_party)
    if @message.save!
      WatchPartyChannel.broadcast_to(
        @watch_party,
        render_to_string(partial: "message", locals: { message: @message })
      )
      redirect_to watch_party_path(@watch_party, anchor: "message-#{@message.id}")
    else
      render "watch_party/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:watch_party_id, :attendee_id, :content)
  end

end
