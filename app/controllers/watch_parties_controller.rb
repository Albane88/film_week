class WatchPartiesController < ApplicationController
  def index
    @watch_parties = WatchParty.all
  end

  def show
    @watch_parties = WatchParty.all
  end
end
