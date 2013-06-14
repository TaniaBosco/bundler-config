class EventsController < ApplicationController
  def index 
      @events = Event.scoped 
      @events = Event.between(params['start'], params['end']) if (params['start'] && params['end']) 
            respond_to do |format| 
                    format.html # index.html.erb 
                    format.json { render :json => @events } 
                        end 
   end 
   def index1
   end
   def save_event
   	@event = Event.create(params[:event])
   	    if @event.save
   	      flash[:alert]="Event Added"
		  redirect_to events_path
		 end
   end

  end
