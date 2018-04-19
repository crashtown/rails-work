class PagesController < ApplicationController
  def hotel
    @hotels = Hotel.all
  end
end
