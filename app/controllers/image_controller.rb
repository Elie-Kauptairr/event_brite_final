class ImageController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @event.image.attach(params[:image])
    redirect_to(event_path(@event))
  end
end
