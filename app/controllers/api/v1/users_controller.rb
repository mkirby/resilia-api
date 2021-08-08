class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def index
    @users = User.all
    render json: @users, status: :accepted
  end

  def show
    if @user.valid?
      render json: @user, status: :ok
    else
      render json: { error: 'user not found'}, status: :not_found
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

end
