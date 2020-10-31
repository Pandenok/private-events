class EnrollmentsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    enrollment = Enrollment.new(event_id: event.id, invitee_id: params[:invitee_id])

    if enrollment.save
      flash[:notice] = "Invitation sent!"
      redirect_to event_path(event)
    else
      flash[:alert] = 'Ooops! Something went wrong...'
      redirect_to event_path(event)
    end
  end

  def destroy
    event = Event.find(params[:event_id])
    if current_user == event.creator
      Enrollment.find(params[:id]).destroy
      flash[:notice] = "The invitation is cancelled!"
    else
      enrollment = Enrollment.find(params[:id])
      enrollment.user_id = nil
      enrollment.save
      flash[:notice] = "You have dropped the enrollment for the #{event.name}!"
    end

    redirect_to event_path(event)
  end

  def update
    @event = Event.find(params[:event_id])
    if @event.invitees.exists?(current_user.id)
      @enrollment = Enrollment.find_by(event_id: params[:event_id], invitee_id: current_user.id)
      @enrollment.update(user_id: current_user.id)
      flash[:notice] = "Thank you for signing up for the '#{@event.name}'!"
    else
      flash[:alert] = 'Your name is not on the invitation list'
    end

    redirect_to event_path(@event)
  end
end
