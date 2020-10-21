class EnrollmentsController < ApplicationController
  def create
    event = Event.find(params[:event_id])
    enrollment = Enrollment.new(event_id: event.id, user_id: current_user.id)

    if enrollment.save
      flash[:notice] = "You have signed up for the #{event.name}. Thank you!"
      redirect_to event_path(event)
    else
      flash[:alert] = 'Ooops! Something went wrong...'
      redirect_to event_path(event)
    end
  end

  def destroy
    event = Event.find(params[:event_id])
    current_user.attended_events.delete(event)
    flash[:notice] = "You have dropped the enrollment for the #{event.name}!"

    redirect_to event_path(event)
  end
end
