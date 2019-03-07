class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def index
    if params[:search]
      @users = User.global_search_user_and_user_characteristics(params[:search])
      @users = @users.where.not(latitude: nil, longitude: nil)
      @markers = @users.map do |user|
        {
          lng: user.longitude,
          lat: user.latitude
        }
      end
    else
      @users = User.all
      @users = @users.where.not(latitude: nil, longitude: nil)
      @markers = @users.map do |user|
        {
          lng: user.longitude,
          lat: user.latitude
        }
      end
    end
  end

  def show
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
