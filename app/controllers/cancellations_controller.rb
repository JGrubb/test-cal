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
    @cancellation = Cancellation.find(params[:id])
    if @cancellation.delete
      redirect_to cancellations_list_path
    end
  end
  
  def list
    @cancellations = Cancellation.all
  end
end
