class EnrollmentsController < ApplicationController
  before_action :require_login

  def create
    event = Event.find(params[:event_id])
    enrollment = Enrollment.new(event_id: event.id, user_id: params[:user_id])

    if enrollment.save
      enrollment.invited!
      flash[:notice] = "Invitation sent!"
      redirect_to users_path(event_id: event.id)
    else
      flash[:alert] = 'Ooops! Something went wrong...'
      redirect_to event_path(event)
    end
  end

  def destroy
    event = Event.find(params[:event_id])
    enrollment = Enrollment.find(params[:id])
    if current_user == event.creator
      enrollment.destroy
      flash[:notice] = "The invitation is cancelled!"
    else
      enrollment.invited!
      # enrollment.save
      flash[:notice] = "You have dropped the enrollment for the #{event.name}!"
    end

    redirect_to users_path(event_id: event.id, id: enrollment.id)
  end

  def update
    @event = Event.find(params[:event_id])
    @enrollment = Enrollment.find_by(event_id: params[:event_id], user_id: current_user.id)
    if @enrollment && @enrollment.invited?
      @enrollment.accepted!
      flash[:notice] = "Thank you for signing up for the '#{@event.name}'!"
    else
      flash[:alert] = 'Your name is not on the invitation list'
    end

    redirect_to event_path(@event)
  end
end
