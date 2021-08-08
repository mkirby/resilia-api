class Api::V1::NotificationsController < ApplicationController
  # before the show action runs, calls the private method find_notification,
  # which sets the @notifications instance variable to the notification record with the params :id
  before_action :find_notification, only: [:show]

  # two separate ways to access all a users notifications
    # get request to /api/v1/messages/?id=:id
    # get request to /api/v1/users/:id
      #serialized user data containing all notifications

  def index
    # sets the notification instance variable to an array of all notifications
    @notifications = Notification.all
    # instead of rendering a view, renders json data and an accepted status
    render json: @notifications, status: :accepted
  end

  def show
    # runs model validations and returns true of there are no errors
    if @notification.valid?
      render json: @notification, status: :ok
    else
      # this doesn't seem to ever hit - if the record isn't found by find_notification
      # it immediately returns active record not found
      render json: { error: 'notification not found'}, status: :not_found
    end
  end

  private

  def find_notification
    # pulls the param :id out of the request
    # .find returns the object by :id
    # if no records exists raises an ActiveRecord::RecordNotFound
    @notification = Notification.find(params[:id])
  end

end
