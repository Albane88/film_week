class WatchPartiesController < ApplicationController
  def new
    @watch_party = WatchParty.new
  end

  def index
    @watch_parties = WatchParty.all
  end
end
