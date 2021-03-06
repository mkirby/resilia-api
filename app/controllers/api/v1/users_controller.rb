class Api::V1::UsersController < ApplicationController
  # before the show action runs, calls the private method find_user,
  # which sets the @user instance variable to the user record with the params :id
  before_action :find_user, only: [:show]

  def index
    # sets the users instance variable to an array of all users
    @users = User.all
    # instead of rendering a view, renders json data and an accepted status
    render json: @users, status: :accepted
  end

  def show
    # runs model validations and returns true of there are no errors
    if @user.valid?
      render json: @user, status: :ok
    else
      render json: { error: 'user not found'}, status: :not_found
    end
  end

  def notifications
    @notifications = User.find(params[:id]).notifications
    # if there are no notifications then returns an empty array
    # then verify if the array is empty on the frontend
    render json: @notifications, status: :ok

    # status: :no_content overrides the empty array and sends nothing
    # not quite how I want to have info on the front end
    # if @notifications.empty?
    #   render json: @notifications, status: :ok
    # else
    #   render json: @notifications, status: :ok
    # end

  end

  private

  def find_user
    # pulls the param :id out of the request
    # .find returns the object by :id
    # if no records exists raises an ActiveRecord::RecordNotFound

    # verify if the status 404 happens in find_user or show else - it might just fail here
    @user = User.find(params[:id])
  end

end
