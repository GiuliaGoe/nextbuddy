class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def index
    @users = User.where.not(latitude: nil, longitude: nil)

    @markers = @users.map do |user|
      {
        lng: user.longitude,
        lat: user.latitude
      }
    end
    # raise
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
