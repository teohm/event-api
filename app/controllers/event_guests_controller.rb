class EventGuestsController < ApplicationController
  def index

    @list = Event.find(params[:event_id]).event_guests

    @list_info = ListInfo.new(@list)

    render 'event_guests/list'
  end
end