class HomeController < ApplicationController

  # skip_before_action :authenticate_user!

  def index
    @flats = Flat.last(3)
  end
end