class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def index
    if params[:search]
      @users = User.global_search_user_and_user_characteristics(params[:search])
    else
      @users = User.all
    end
  end

  def show
    @professional_interests = ProfessionalInterest.where(:user_id == @user.id)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
