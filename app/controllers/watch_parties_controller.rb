class WatchPartiesController < ApplicationController
  def new
  end

  def show
  end

  def index
    @watch_parties = WatchParty.all
  end
end
