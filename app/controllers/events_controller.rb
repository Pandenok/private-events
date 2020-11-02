class EventsController < ApplicationController
  include EventsHelper
  before_action :require_login, except: [:index]

  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)

    if @event.save
      flash[:success] = "Event '#{@event.name}' created!"
      redirect_to @event
    else
      flash[:alert] = "Some error!"
      render 'new'
    end
  end
end
