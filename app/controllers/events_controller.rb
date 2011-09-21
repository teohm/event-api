class EventsController < ApplicationController
  def index
    @list = Event.all
    @list_info = ListInfo.new(@list)

    render 'list'
  end
end