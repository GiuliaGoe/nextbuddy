class UsersController < ApplicationController
  before_action :set_user, only: [ :show]
  def index
    @users = User.all
    # Search method (gets triggered when input is made in navbar-search)
    if params[:search].present?
      @users = @users.global_search_user_and_user_characteristics(params[:search])
    end

    # Filtering Methods (get triggered by applying filters, defined in private section for readability)

    filter_for_radius
    filter_for_interest
    # filter_for_address <- was disabled because it creates dependancy when used with radius filter + is only meant for pro users
    filter_for_activity
    filter_for_skill
    filter_for_availability
    # raise
    # See only users which have an address so that number of map markers corresponds to number of cards below
    @users = @users.where.not(latitude: nil, longitude: nil)
    @users = @users.where.not(id: current_user.id)

    # Set markers to display on the map
    @markers = @users.map do |user|
      {
        lng: user.longitude,
        lat: user.latitude,
        user_id: user.id
      }
    end
  end

  def show
  end

  def create
    @user = User.new(user_params)
  end

  # helper_method :resource_name, :resource, :devise_mapping, :resource_class

  # def resource_name
  #   :user
  # end

  # def resource
  #   @resource ||= User.new
  # end

  # def resource_class
  #   User
  # end

  # def devise_mapping
  #   @devise_mapping ||= Devise.mappings[:user]
  # end


  private

  # Filtering Methods for readability

  def filter_for_radius
    if params[:radius].present?
      # @users = @users.within(params[:radius].to_i, :units => :kms, origin: [52.154778, 9.9579652])
      @users = @users.near([current_user.latitude, current_user.longitude], params[:radius].to_i, units: :km)
    end
  end

  def filter_for_interest
    if params[:interest].present?
      @users = @users.joins(:professional_interests).where("professional_interests.name ILIKE ?", "%#{params[:interest]}%")
    end
  end

  def filter_for_address
    if params[:address].present?
      @users = @users.where("address ILIKE ?", "%#{params[:address]}")
    end
  end

  def filter_for_activity
    if params[:activity].present?
      @users = @users.joins(:activities).where("activities.description ILIKE ?", "%#{params[:activity]}")
    end
  end

  def filter_for_skill
    if params[:skill].present?
      @users = @users.joins(:skills).where("skills.name ILIKE ?", "%#{params[:skill]}")
    end
  end

  def filter_for_availability
    if params[:availability].present?
      @users = @users.joins(:availabilities).where("availabilities.day_of_week = ?", params[:availability])
    end
  end

  def set_user
    @user = User.find(params[:id])
  end
end
