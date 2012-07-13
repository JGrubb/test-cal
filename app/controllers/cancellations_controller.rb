class CancellationsController < ApplicationController
  def create
    @cancellation = Cancellation.new
    @cancellation.event_id = params[:event_id]
    @cancellation.date = params[:date]
    if @cancellation.save
      redirect_to @cancellation.event
    else
      flash[:error] = "uh oh"
    end
  end

  def delete
  end
end
