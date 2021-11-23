class WatchPartiesController < ApplicationController
  def new
    @watch_party = WatchParty.new
  end
end
